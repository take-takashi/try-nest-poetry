#!/bin/bash

WORKSPACE=$PWD

# __pycache__フォルダを作成しない設定
echo "export PYTHONDONTWRITEBYTECODE=1" >> ~/.bashrc

# セットアップ
cd ${WORKSPACE}/sample-project01
poetry install --no-root
poetry shell &

cd ${WORKSPACE}/sample-project02
poetry install --no-root
poetry shell &