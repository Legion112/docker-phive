image.build:
	docker build . -f ./build/docker/Dockerfile -t fearofcode/phive:$(version) --build-arg VERSION=$(version) --build-arg VERSION=$(version)
image.publish:
	docker buildx build . --platform linux/arm/v7,linux/arm64/v8,linux/amd64  --tag fearofcode/phive:$(version) -f ./build/docker/Dockerfile --build-arg VERSION=$(version)
image.push:
	docker push fearofcode/phive:$(version)