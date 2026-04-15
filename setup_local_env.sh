#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

IMAGE="${JEKYLL_DOCKER_IMAGE:-ruby:2.7}"
BUNDLER_VERSION="${BUNDLER_VERSION:-2.2.19}"
BUNDLE_VOLUME="${BUNDLE_VOLUME:-eachsheep_jekyll_bundle}"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required but was not found in PATH."
  echo "Install Docker first, then re-run this script."
  exit 1
fi

echo "Preparing local Jekyll environment with Docker image: ${IMAGE}"
docker pull "$IMAGE"

docker run --rm \
  -v "$PWD":/srv/jekyll \
  -v "${BUNDLE_VOLUME}":/usr/local/bundle \
  -w /srv/jekyll \
  "$IMAGE" \
  bash -lc "ruby -v && gem install bundler -v '${BUNDLER_VERSION}' --no-document && bundle _${BUNDLER_VERSION}_ install && bundle _${BUNDLER_VERSION}_ exec jekyll build"

echo
echo "Setup complete."
echo "Run ./run_server.sh and open http://127.0.0.1:4000/"
echo "If port forwarding for 4000 fails in VS Code, run: PORT=8080 LIVERELOAD_PORT=35730 ./run_server.sh"
