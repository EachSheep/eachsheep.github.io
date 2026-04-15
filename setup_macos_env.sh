#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

BUNDLER_VERSION="${BUNDLER_VERSION:-2.2.19}"
HOMEBREW_RUBY_FORMULA="${HOMEBREW_RUBY_FORMULA:-ruby@3.3}"

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

echo "Installing ${HOMEBREW_RUBY_FORMULA} and build dependencies..."
if ! brew info "$HOMEBREW_RUBY_FORMULA" >/dev/null 2>&1; then
  cat <<MSG
Homebrew formula ${HOMEBREW_RUBY_FORMULA} is not available.
This site is not compatible with Homebrew's default Ruby 4.x.

Try:

  brew search ruby@

Then run this script with an available Ruby 3.x formula, for example:

  HOMEBREW_RUBY_FORMULA=ruby@3.4 ./setup_macos_env.sh
MSG
  exit 1
fi

brew install "$HOMEBREW_RUBY_FORMULA" pkg-config

BREW_RUBY_PREFIX="$(brew --prefix "$HOMEBREW_RUBY_FORMULA")"
export PATH="${BREW_RUBY_PREFIX}/bin:$PATH"

echo "Using Ruby: $(ruby -v)"
if ! ruby -rsocket -e 'puts "socket ok"' >/dev/null; then
  cat <<'MSG'
Homebrew Ruby is installed, but Ruby cannot load the socket library.
This usually means the local Command Line Tools installation is broken.
Try:

  xcode-select --install
  brew reinstall ruby
  ./setup_macos_env.sh
MSG
  exit 1
fi

echo "Installing Bundler ${BUNDLER_VERSION}..."
gem install bundler -v "$BUNDLER_VERSION" --no-document

echo "Installing project gems into vendor/bundle..."
echo "Cleaning old local bundle cache to avoid mixing gems from another Ruby version..."
rm -rf vendor/bundle
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
