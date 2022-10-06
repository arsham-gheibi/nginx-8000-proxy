
server {
    listen ${LISTEN_PORT};
    server_name 66.70.140.123;

    location / {
        uwsgi_pass              ${APP_HOST}:${APP_PORT};
        include                 /etc/nginx/uwsgi_params;
        client_max_body_size    10M;
    }
}
