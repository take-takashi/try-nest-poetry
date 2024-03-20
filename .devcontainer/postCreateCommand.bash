#!/bin/bash

WORKSPACE=$PWD

# __pycache__フォルダを作成しない設定
echo "export PYTHONDONTWRITEBYTECODE=1" >> ~/.bashrc

# セットアップ
cd ${WORKSPACE}/sample_project01
poetry install --no-root
poetry shell &

cd ${WORKSPACE}/sample_project02
poetry install --no-root
poetry shell &