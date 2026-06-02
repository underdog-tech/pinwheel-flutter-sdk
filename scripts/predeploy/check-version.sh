#!/usr/bin/env bash
# Ensures pubspec.yaml version, CHANGELOG.md, and ios/pinwheel.podspec are in sync.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"

VERSION="$(grep -E '^version:' pubspec.yaml | head -n 1 | sed -E 's/^version:[[:space:]]*//')"

if [[ -z "$VERSION" ]]; then
  echo "ERROR: Could not parse version from pubspec.yaml."
  exit 1
fi

echo ">> pubspec.yaml version: $VERSION"

if ! grep -qF "### [$VERSION]" CHANGELOG.md && ! grep -qF "### ${VERSION}" CHANGELOG.md; then
  echo ""
  echo "ERROR: No CHANGELOG.md section found for version $VERSION."
  echo "Add a '### [$VERSION]' section to CHANGELOG.md."
  exit 1
fi

echo ">> CHANGELOG.md contains an entry for $VERSION."

PODSPEC_VERSION="$(grep -E "s\.version[[:space:]]*=" ios/pinwheel.podspec | head -n 1 | sed -E "s/.*= ['\"]([^'\"]+)['\"].*/\1/")"

if [[ -z "$PODSPEC_VERSION" ]]; then
  echo "ERROR: Could not parse s.version from ios/pinwheel.podspec."
  exit 1
fi

echo ">> ios/pinwheel.podspec version: $PODSPEC_VERSION"

if [[ "$PODSPEC_VERSION" != "$VERSION" ]]; then
  echo ""
  echo "ERROR: Version mismatch between pubspec.yaml ($VERSION) and ios/pinwheel.podspec ($PODSPEC_VERSION)."
  exit 1
fi

echo ">> Version check passed."
