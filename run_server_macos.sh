#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

RUBY_VERSION="${RUBY_VERSION:-3.1.6}"
BUNDLER_VERSION="${BUNDLER_VERSION:-2.2.19}"
PORT="${PORT:-4000}"
LIVERELOAD_PORT="${LIVERELOAD_PORT:-35729}"

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This script is intended for macOS. Current system: $(uname -s)"
  exit 1
fi

if ! command -v rbenv >/dev/null 2>&1; then
  echo "rbenv was not found. Run ./setup_macos_env.sh first."
  exit 1
fi

export RBENV_ROOT="${RBENV_ROOT:-$HOME/.rbenv}"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init - bash)"

if ! rbenv versions --bare | grep -qx "$RUBY_VERSION"; then
  echo "Ruby ${RUBY_VERSION} is not installed. Run ./setup_macos_env.sh first."
  exit 1
fi

rbenv local "$RUBY_VERSION"

if ! gem list -i bundler -v "$BUNDLER_VERSION" >/dev/null 2>&1; then
  gem install bundler -v "$BUNDLER_VERSION" --no-document
fi

bundle "_${BUNDLER_VERSION}_" check || bundle "_${BUNDLER_VERSION}_" install

echo "Starting Jekyll at http://127.0.0.1:${PORT}/"
echo "Press Ctrl+C to stop."

exec bundle "_${BUNDLER_VERSION}_" exec jekyll serve \
  --host 127.0.0.1 \
  --port "$PORT" \
  --livereload \
  --livereload-port "$LIVERELOAD_PORT"
