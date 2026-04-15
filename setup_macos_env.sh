#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

RUBY_VERSION="${RUBY_VERSION:-3.1.6}"
BUNDLER_VERSION="${BUNDLER_VERSION:-2.2.19}"

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This script is intended for macOS. Current system: $(uname -s)"
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  cat <<'MSG'
Homebrew is required but was not found.
Install Homebrew first:

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

Then re-run:

  ./setup_macos_env.sh
MSG
  exit 1
fi

echo "Installing rbenv and Ruby build dependencies with Homebrew..."
brew install rbenv ruby-build pkg-config

export RBENV_ROOT="${RBENV_ROOT:-$HOME/.rbenv}"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init - bash)"

echo "Installing Ruby ${RUBY_VERSION} with rbenv..."
rbenv install -s "$RUBY_VERSION"
rbenv local "$RUBY_VERSION"

echo "Installing Bundler ${BUNDLER_VERSION}..."
gem install bundler -v "$BUNDLER_VERSION" --no-document

echo "Installing project gems into vendor/bundle..."
bundle "_${BUNDLER_VERSION}_" config set path vendor/bundle
bundle "_${BUNDLER_VERSION}_" install

echo "Building the site once to verify the environment..."
bundle "_${BUNDLER_VERSION}_" exec jekyll build

cat <<MSG

macOS local environment is ready.

Start the preview server with:

  ./run_server_macos.sh

Then open:

  http://127.0.0.1:4000/

To use another port:

  PORT=8080 ./run_server_macos.sh
MSG
