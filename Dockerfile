FROM nginx:alpine

COPY index.html bulma.min.css /usr/share/nginx/html/
COPY datamaps/ index.html bulma.min.css /usr/share/nginx/html/datamaps/
COPY d3/ /usr/share/nginx/html/d3/
COPY data/ /usr/share/nginx/html/data/

HEALTHCHECK --interval=10s CMD curl --fail localhost:80 || exit 1



