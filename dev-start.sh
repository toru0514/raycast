#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Dev Server Start
# @raycast.mode fullOutput
# @raycast.icon ⚡
# @raycast.packageName Dev Tools
# @raycast.argument1 {"type": "dropdown", "placeholder": "project", "data": [{"title": "cost-app", "value": "cost-app"}, {"title": "shipping-manager", "value": "handmade-shipping-manager"}, {"title": "pfauto-app", "value": "pfauto-app"}]}

BASE_DIR=~/projects  # ← 実際のプロジェクトの親ディレクトリに変更
PROJECT_PATH="$BASE_DIR/$1"

# ポート3000をキル
PID=$(lsof -ti :3000)
if [ -n "$PID" ]; then
  echo "🔪 Killing PID $PID on port 3000..."
  kill -9 $PID
  sleep 1
else
  echo "✅ Port 3000 is free"
fi

# 起動
if [ -d "$PROJECT_PATH" ]; then
  echo "🚀 Starting: $1"
  cd "$PROJECT_PATH"
  npm run dev
else
  echo "❌ Not found: $PROJECT_PATH"
  exit 1
fi
