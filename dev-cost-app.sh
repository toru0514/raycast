#!/bin/bash
# @raycast.schemaVersion 1
# @raycast.title DevServer cost-app
# @raycast.mode fullOutput
# @raycast.icon ⚡

PID=$(lsof -ti :3000)
if [ -n "$PID" ]; then
  echo "🔪 Killing PID $PID..."
  kill -9 $PID
  sleep 1
fi

echo "🚀 Starting cost-app"
cd ~/projects/cost-app  # ← ここだけ各ファイルで変える
npm run dev
