DOCKER_TAG=3.4.2-core-64k

docker_build_push:
	@echo "制作 Docker 镜像中"
	docker buildx build --builder YQMultiArchBuilder \
	--platform linux/arm64,linux/amd64 \
	--memory 20g \
	-t hub.yunqutech.com/common/influxdb:${DOCKER_TAG} -f Dockerfile --push .
	@echo "镜像制作完成"

