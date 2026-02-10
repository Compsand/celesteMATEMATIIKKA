#!/bin/sh
echo -ne '\033c\033]0;celesteMATEMATIIKKA\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/linux build.x86_64" "$@"
