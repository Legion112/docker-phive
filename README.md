# docker-phive
Dockerfile for https://github.com/phar-io/phive

## Build example 
```shell
version=0.15.1 make image.build
```

# Usage
## For Dockerfile build
```dockerfile
FROM fearofcode/phive
RUN echo 'y' | phive install phpcov@$VERSION --global --copy

FROM php:7.4-cli-alpine

```
### Example https://github.com/Legion112/docker-phpcov

## As CLI tool
```shell
docker run -w /tmp -v $(pwd):/tmp/ fearofcode/phive:0.15.1 install phpcov@6.0.1 --copy
```
# Troubleshooting