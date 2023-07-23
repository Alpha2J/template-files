#!/bin/bash
required_nodejs_major_version=16
if command -v node &> /dev/null; then
  installed_nodejs_major_version=$(node -v | cut -d 'v' -f 2 | cut -d '.' -f 1)

  echo $installed_nodejs_major_version
  if [ "$installed_nodejs_major_version" -ge "$required_nodejs_major_version" ]; then
    echo "Node.js已经安装且版本大于等于${required_nodejs_major_version}，无需处理"
  else
    need_down_nodejs=true
    echo "Node.js已安装但主要版本号小于16，将下载并安装Node.js 16..."
  fi
fi

if [ "$need_down_nodejs" = "true" ]; then
  echo "正在下载nodejs, 并安装nodejs"
fi

node ./_autoconf.js
