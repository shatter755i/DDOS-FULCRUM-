# DDOS-FULCRUM

A Simple DDoS Testing Framework for Educational and Ethical Hacking Purposes

![GNU License](https://img.shields.io/badge/license-GNU-green.svg)
![Bash](https://img.shields.io/badge/bash-scripting-green.svg)
![Python Support](https://img.shields.io/badge/python-3.x-yellow.svg)

## Project Overview

DDOS-FULCRUM is a powerful Bash-based framework designed for ethical hackers, cybersecurity students, and security enthusiasts. It allows users to perform DDoS testing on various targets for educational purposes. The tool provides an easy-to-use interface for several attack types and network analysis methods.

The framework is built with the goal of assisting cybersecurity professionals and students in understanding and testing DDoS attack vectors in a controlled environment. It promotes ethical hacking and educates users on network security.

## Features

- **ICMP Flood**: Sends a flood of ICMP Echo Request packets to overwhelm the target
- **UDP Flood**: Floods a target port with random UDP packets
- **TCP Flood**: Generates TCP SYN packets for SYN flood attacks
- **Port Scanning**: Scans for open ports on the target device using Nmap
- **Simple UDP Flood**: A simplified Python-based UDP flood for devices with restricted access
- **Advanced Nmap Scanning**: Performs detailed port scanning with advanced options

## Prerequisites

Ensure you have the following dependencies installed:

```bash
# Update package lists
pkg update

# Upgrade existing packages
pkg upgrade

# Install required dependencies
pkg install git
pkg install netcat
pkg install nmap
pkg install hping3   # Optional, requires root
pkg install python
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/shatter755i/DDOS-FULCRUM.git
```

2. Navigate to the project directory:
```bash
cd DDOS-FULCRUM
```

3. Run the script:
```bash
./ddos_fulcrum.sh
```

## Usage

After installation, start using DDOS-FULCRUM by running the script:

1. Execute the script:
```bash
./ddos_fulcrum.sh
```

2. Follow the on-screen prompts:
- Enter the target IP address
- Choose the attack type (ICMP, UDP, TCP, or Port Scan)
- Follow specific instructions for each attack type

## Supported Attacks

### 1. ICMP Flood
Overwhelms the target with ICMP Echo Request packets to test network resilience.

### 2. UDP Flood
Sends random UDP packets to flood a target port, evaluating service robustness.

### 3. TCP Flood
Generates TCP SYN packets to flood open ports, testing defenses against SYN flood attacks.

### 4. Port Scanning
- **Basic Scan**: Uses Nmap to identify open ports
- **Advanced Scanning**: Provides detailed service detection

### 5. Simple UDP Flood
A Python-based UDP flood for environments with restricted raw socket access.
