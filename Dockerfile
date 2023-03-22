FROM maptiler/tileserver-gl

COPY ./config /config
COPY ./data /data
COPY ./styles /styles

WORKDIR /data

EXPOSE 8080

CMD [ "/usr/src/app/docker-entrypoint.sh", "-p", "8080", "-c", "/config/config.json" ]