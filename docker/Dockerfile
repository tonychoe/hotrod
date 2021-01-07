FROM scratch
EXPOSE 8080 8081 8082 8083
COPY ./bin/hotrod-linux /go/bin/
ENTRYPOINT ["/go/bin/hotrod-linux", "all", "-m", "prometheus"]
CMD ["all"]
