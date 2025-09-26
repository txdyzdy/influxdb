docker_build_push:
	@echo "制作 Docker 镜像中"
	docker buildx build --builder YQMultiArchBuilder \
	--platform linux/arm64 \
	--memory 20g \
	-t hub.yunqutech.com/common/influxdb:3.4.2-core-64k -f Dockerfile --push .
	@echo "镜像制作完成"