#!/usr/bin/env bash

# cd /home/shenhaiyang/Source/shy-CV/eachsheep.github.io
# PORT=8080 LIVERELOAD_PORT=35730 ./run_server.sh
set -euo pipefail

cd "$(dirname "$0")"

IMAGE="${JEKYLL_DOCKER_IMAGE:-ruby:2.7}"
BUNDLER_VERSION="${BUNDLER_VERSION:-2.2.19}"
BUNDLE_VOLUME="${BUNDLE_VOLUME:-eachsheep_jekyll_bundle}"
CONTAINER_NAME="${CONTAINER_NAME:-eachsheep-jekyll}"
PORT="${PORT:-4000}"
LIVERELOAD_PORT="${LIVERELOAD_PORT:-35729}"

if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is required but was not found in PATH."
  echo "Install Docker first, then run: ./setup_local_env.sh"
  exit 1
fi

docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1 || true

echo "Starting Jekyll at http://127.0.0.1:${PORT}/"
echo "If VS Code does not forward this port, try: PORT=8080 LIVERELOAD_PORT=35730 ./run_server.sh"
echo "Stop from another terminal with: docker stop ${CONTAINER_NAME}"
echo "Press Ctrl+C to stop."

exec docker run --rm \
  --name "$CONTAINER_NAME" \
  -p "${PORT}:4000" \
  -p "${LIVERELOAD_PORT}:35729" \
  -v "$PWD":/srv/jekyll \
  -v "${BUNDLE_VOLUME}":/usr/local/bundle \
  -w /srv/jekyll \
  "$IMAGE" \
  bash -lc "gem install bundler -v '${BUNDLER_VERSION}' --no-document >/dev/null && (bundle _${BUNDLER_VERSION}_ check || bundle _${BUNDLER_VERSION}_ install) && bundle _${BUNDLER_VERSION}_ exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --livereload-port 35729"
