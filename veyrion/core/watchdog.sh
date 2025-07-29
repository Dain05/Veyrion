#!/data/data/com.termux/files/usr/bin/bash
while true; do
    if ! pgrep -f agent.sh > /dev/null; then
        bash ~/veyrion/core/agent.sh
        echo "[Veyrion 🔁] Restarted agent at $(date)" >> ~/veyrion/logs/watchdog.log
    fi
    sleep 60
done
