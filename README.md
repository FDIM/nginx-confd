# nginx-confd

nginx docker container with pre-configured confd, it will watch /services/web/* properties and regenerate nginx config

value stored in /services/web/123.123.123.123 must be a stringified json object with host and port properties

# usage

docker run --name nginx -e ETCD=10.135.13.105:4001 -e CONFD_PREFIX=/services/web -e NGINX_SERVICES_80="node-base:/" -e NGINX_PORTS="80" -p 80:80 fdim/nginx-confd

# ssl

supported but not documented
