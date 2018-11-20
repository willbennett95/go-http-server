.PHONY = install uninstall docker_up docker_destroy

NAME = go-http-server
INSTALL_LOCATION = /opt/${NAME}
SERVICE_SCRIPT = /etc/systemd/system/${NAME}.service

install:
	@go build -o build/go-http-server ./http-server.go
	@cp -r ./static ./build
	@cp ${NAME}.service ${SERVICE_SCRIPT}
	@mkdir -p ${INSTALL_LOCATION}
	@cp -r ./build ${INSTALL_LOCATION}
	@systemctl daemon-reload

uninstall:
	@rm -rf ${INSTALL_LOCATION}
	@rm -rf ${SERVICE_SCRIPT}

docker_up:
	@docker build -t will_bennett/${NAME}:latest .
	@docker run -d -p 9000:9000 --name ${NAME} will_bennett/${NAME}

docker_destroy:
	@docker stop ${NAME}
	@docker rm ${NAME}
	@docker rmi will_bennett/${NAME}

