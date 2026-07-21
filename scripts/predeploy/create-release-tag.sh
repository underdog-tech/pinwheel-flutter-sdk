#!/usr/bin/env bash
# Creates and pushes a v<version> git tag to trigger GitHub Actions pub.dev publishing.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"

if [[ -z "${GITHUB_TOKEN_CTX:-}" ]]; then
  echo "ERROR: GITHUB_TOKEN_CTX environment variable is not set."
  echo "Add a GitHub token with contents:write access to the CircleCI context."
  exit 1
fi

VERSION="$(grep -E '^version:' pubspec.yaml | head -n 1 | sed -E 's/^version:[[:space:]]*//')"

if [[ -z "$VERSION" ]]; then
  echo "ERROR: Could not parse version from pubspec.yaml."
  exit 1
fi

TAG="v${VERSION}"
REPO="underdog-tech/pinwheel-flutter-sdk"

echo ">> pubspec.yaml version: $VERSION"
echo ">> Release tag: $TAG"

if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "ERROR: Tag $TAG already exists locally."
  exit 1
fi

git fetch --tags origin

if git ls-remote --tags origin "refs/tags/${TAG}" | grep -q .; then
  echo "ERROR: Tag $TAG already exists on origin."
  exit 1
fi

git config user.email "circleci@pinwheelapi.com"
git config user.name "CircleCI"

git tag -a "$TAG" -m "Release ${VERSION}"

git remote set-url origin "https://x-access-token:${GITHUB_TOKEN_CTX}@github.com/${REPO}.git"
git push origin "$TAG"

echo ">> Pushed tag $TAG to origin."
