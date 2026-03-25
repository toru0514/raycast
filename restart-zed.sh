#!/bin/bash
# @raycast.schemaVersion 1
# @raycast.title Zed Restart
# @raycast.mode fullOutput
# @raycast.icon 🔄
# @raycast.packageName Dev Tools

echo "🛑 Killing Zed..."
pkill -x "Zed" 2>/dev/null || pkill -x "zed" 2>/dev/null

sleep 2

echo "🚀 Restarting Zed..."
open -a "Zed"

echo "✅ Zed restarted"
