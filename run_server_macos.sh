#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

BUNDLER_VERSION="${BUNDLER_VERSION:-2.2.19}"
HOMEBREW_RUBY_FORMULA="${HOMEBREW_RUBY_FORMULA:-ruby@3.3}"
PORT="${PORT:-4000}"
LIVERELOAD_PORT="${LIVERELOAD_PORT:-35729}"

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This script is intended for macOS. Current system: $(uname -s)"
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew was not found. Run ./setup_macos_env.sh first."
  exit 1
fi

BREW_RUBY_PREFIX="$(brew --prefix "$HOMEBREW_RUBY_FORMULA" 2>/dev/null || true)"
if [[ -z "$BREW_RUBY_PREFIX" || ! -x "${BREW_RUBY_PREFIX}/bin/ruby" ]]; then
  echo "Homebrew Ruby formula ${HOMEBREW_RUBY_FORMULA} was not found. Run ./setup_macos_env.sh first."
  exit 1
fi

export PATH="${BREW_RUBY_PREFIX}/bin:$PATH"
echo "Using Ruby: $(ruby -v)"

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
