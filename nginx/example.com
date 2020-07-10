#################################
## HTTP virtual server block
#################################
server {
	listen 80;
	listen [::]:80;

	server_name example.com *.example.com;
  	return 301 https://$host$request_uri;
}

#################################
## Virtual server
#################################
server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;

	server_name example.com www.example.com;
	
	# If you use certbot-auto, or if your certificate provider
	# gives ssl configurations include them here as needed
	include /etc/nginx/snippets/ssl.conf;

	location / {
		root {$path_to_build_root_files};
		index index.html
		
		# Add other headers as appropriate
	}
}

#################################
## Proxy server
#################################
server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;

	server_name example.com www.example.com;

	# If you use certbot-auto, or if your certificate provider
	# gives ssl configurations include them here as needed
	include /etc/nginx/snippets/ssl.conf;

	location / {
		proxy_pass http://localhost:{$PORT};
		proxy_http_version 1.1;
		proxy_set_header Upgrade $http_upgrade;
		proxy_set_header Connection "upgrade";
		proxy_set_header Host $host;
		proxy_cache_bypass $http_upgrade;
	}
}

