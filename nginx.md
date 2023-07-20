# NGINX

web server, similar to apache, often used to create reverse proxys
____________________________________________________
# Set up NGINX to send OTEL

## links
- https://www.nginx.com/blog/monitoring-nginx/
- https://www.nginx.com/blog/nginx-tutorial-opentelemetry-tracing-understand-microservices


## install
- install ```sudo yum install nginx```
- start ```sudo systemctl start nginx```
- enable start at boot ```sudo systemctl enable nginx```


## about config file
- section headers like "http" are called "context"
- the key/value pairs within the "context" brackets are called "directives"


## modify config file
- open ```sudo vi /etc/nginx/nginx.conf```
- in http section, define server block to setup reverse proxy:
```
http {
    server {
        listen 80;

        location / {
            proxy_pass http://localhost:4318;
        }
    }
}
```

explanation:
- Inside the http section, a server block is defined. This is where you configure how Nginx should behave as a server for a particular site or service.
- The listen 80; line inside the server block tells Nginx to listen for incoming connections on port 80, which is the default HTTP port.
- Inside the server block, location blocks are defined. location blocks tell Nginx what to do when it receives a request for a specific path.
- location / means that the following directives apply to all incoming requests.
- The proxy_pass http://localhost:4318; directive inside the location / block tells Nginx to forward (or "proxy") all incoming HTTP requests to http://localhost:4318. This is the endpoint of your OpenTelemetry Collector for HTTP.
- The location ~ ^/grpc-status($|/) block is a bit more complex. It's using a regular expression to match any request path that starts with /grpc-status. The ~ operator before the regular expression tells Nginx to perform a case-sensitive match.
- The grpc_pass grpc://localhost:4317; directive inside this location block tells Nginx to forward (or "proxy") all incoming gRPC requests that match the previous condition to grpc://localhost:4317. This is the endpoint of your OpenTelemetry Collector for gRPC.


## verify
- verify the configuration ```sudo nginx -t```
- reload to apply changes ```sudo systemctl reload nginx```
