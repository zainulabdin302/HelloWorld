#!/bin/bash

echo "📊 System Resource Usage - $(date)"

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4 "%"}'

echo ""
echo "Memory Usage:"
free -h | awk '/Mem:/ {print $3 " used out of " $2}'

echo ""
echo "Disk Usage:"
df -h / | awk '/\// {print $5 " used"}'

echo ""
echo "✅ Monitoring Complete"
