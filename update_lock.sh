#!/bin/bash

set -euxo pipefail

# Ensure BUILD_WORKSPACE_DIRECTORY is set (usually by 'bazel run')
if [ -z "${BUILD_WORKSPACE_DIRECTORY}" ]; then
  echo "Error: BUILD_WORKSPACE_DIRECTORY is not set. Run this target using 'bazel run'." >&2
  exit 1
fi

# Change to the workspace root
cd "${BUILD_WORKSPACE_DIRECTORY}" || exit 1

echo "Running uv pip compile in workspace root: ${BUILD_WORKSPACE_DIRECTORY}"
uv pip compile requirements.txt -o requirements.txt.lock

echo "Successfully updated requirements.txt.lock in ${BUILD_WORKSPACE_DIRECTORY}"