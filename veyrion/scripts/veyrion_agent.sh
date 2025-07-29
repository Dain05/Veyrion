#!/data/data/com.termux/files/usr/bin/bash

while true; do
  echo "🧠 Veyrion heartbeat: $(date)" >> ~/veyrion/logs/heartbeat.log
  if [ -f ~/veyrion/core/command.txt ]; then
    cmd=$(cat ~/veyrion/core/command.txt)
    eval "$cmd" >> ~/veyrion/logs/last_command.log 2>&1
    echo "" > ~/veyrion/core/command.txt
  fi
  sleep 10
done
