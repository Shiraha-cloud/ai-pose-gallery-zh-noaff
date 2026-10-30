#!/usr/bin/env bash
# 生成 Vercel 的发布目录 dist/（vercel.json 的 outputDirectory 指向它）。
# 只拷贝站点运行时真正用到的文件，把 scripts/、docs/、README 等仓库文件留在外面。
set -euo pipefail

cd "$(dirname "$0")/.."

rm -rf dist
mkdir -p dist

cp -R index.html robots.txt og-cover.jpg data thumbs img dist/

echo "dist ready:"
du -sh dist
find dist -type f | wc -l
