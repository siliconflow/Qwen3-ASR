#!/bin/bash
# 构建并推送 Qwen3-ASR 代理镜像

set -e

# 配置
REGISTRY="${REGISTRY:-your-registry}"
IMAGE_NAME="${IMAGE_NAME:-qwen3-asr-proxy}"
IMAGE_TAG="${IMAGE_TAG:-latest}"

FULL_IMAGE="${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"

echo "Building proxy image: ${FULL_IMAGE}"

# 进入 proxy 目录
cd "$(dirname "$0")"

# 构建镜像
docker build -t "${FULL_IMAGE}" .

# 推送镜像
echo "Pushing image..."
docker push "${FULL_IMAGE}"

echo ""
echo "Image pushed: ${FULL_IMAGE}"
echo ""
echo "Update your deployment config with:"
echo "  image: ${FULL_IMAGE}"
