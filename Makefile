OSV ?= 10sp3
NAMESPACE ?= djangoyi

# OSV=10sp3 make kylin-build-gcc
kylin-build-gcc:
	docker buildx build -f gcc/Dockerfile-kylin --build-arg OSV=${OSV} --build-arg NAMESPACE=${NAMESPACE} --platform linux/amd64,linux/arm64 -t ${NAMESPACE}/gcc-compiler:kylin-${OSV} . --push