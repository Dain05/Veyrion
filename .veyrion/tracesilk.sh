#!/data/data/com.termux/files/usr/bin/bash
while true; do
  date +"%Y-%m-%d %H:%M:%S" >> ~/.veyrion/trace.log
  dumpsys activity activities | grep "ResumedActivity" >> ~/.veyrion/trace.log
  sleep 30
done
