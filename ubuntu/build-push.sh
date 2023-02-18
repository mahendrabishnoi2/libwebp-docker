docker buildx create --use --name multibuilder
docker buildx build --platform linux/amd64,linux/arm64 -t mbish2/libwebp:ubuntu-22.04 --push .
