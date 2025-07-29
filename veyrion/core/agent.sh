echo "[Veyrion 🟢] Booted at $(date)" >> ~/veyrion/logs/agent.log

# Example actions
termux-notification --title "Veyrion" --content "🟢 Agent running silently" --priority high

# Optional crypto wallet check (placeholder)
# curl -s https://yourapi.com/checkwallet >> ~/veyrion/logs/wallet.log

# Schedule a check every X mins (optional)
# while true; do bash ~/veyrion/scripts/check.sh; sleep 900; done &

exit 0
