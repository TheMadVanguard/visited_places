FROM nginx:alpine

COPY d3/ datamaps/ index.html bulma.min.css /usr/share/nginx/html/
COPY data/ /usr/share/nginx/html/data/

HEALTHCHECK --interval=10s CMD curl --fail localhost:80 || exit 1



