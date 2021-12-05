#!/usr/bin/env bash
# Run with ./updateblog.sh "Your optional commit message"

set -euo pipefail

cd ~/Documentos/Hugo/Blog/public
printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"
git add .
# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"
git push origin master
