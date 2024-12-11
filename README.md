# DDOS-FULCRUM
A Simple DDoS Testing Framework for Educational and Ethical Hacking Purposes.


Project Overview

This script, DDOS FULCRUM, is a Bash-based framework designed for educational and ethical hacking purposes. It allows you to simulate various types of Denial of Service (DDoS) attacks on a target network or system. The script offers several options for flooding the target with different types of traffic and even includes a port scanning feature to help identify open ports.



Table of Contents

1. Features


2. Dependencies


3. Installation


4. Usage


5. Supported Attacks


6. Ethical Considerations


7. Contributions


8. License




---

Features

ICMP Flood: Initiates a flood of ICMP packets to overwhelm the target device.

UDP Flood: Sends a large number of UDP packets to a target port to cause network congestion.

TCP Flood: Generates TCP SYN packets to flood the target's open ports.

Port Scanning: Scans the target machine for open ports to identify vulnerable services.

Simple UDP Flood: A simplified Python-based UDP flood option, particularly useful on devices where raw socket access is restricted.

Advanced Nmap Scanning: Offers a choice for normal and advanced port scanning with Nmap.



---

Dependencies

To run DDOS FULCRUM on your device, you'll need the following dependencies installed:

1. Netcat (nc)

Purpose: Used for sending and receiving UDP packets and network communication.

Installation:

pkg install netcat


2. Nmap

Purpose: Port scanner for discovering open ports on the target.

Installation:

pkg install nmap


3. Hping3 (optional, requires root)

Purpose: A tool for generating different types of DDoS traffic, including UDP, TCP, and ICMP floods.

Installation:

pkg install hping3


4. Python (for running the UDP flood script in Python)

Purpose: Python is used for a simplified UDP flood script that works without raw socket permissions.

Installation:

pkg install python



---

Installation

1. Clone the repository: To start using DDOS FULCRUM, first clone this repository to your local machine or Termux environment.

git clone https://github.com/shatter755i/DDOS-FULCRUM.git
cd DDOS-FULCRUM


2. Install Dependencies: Make sure you have the required packages installed.

pkg update && pkg upgrade
pkg install netcat nmap python hping3

Note: hping3 may not work on unrooted Android devices due to socket permission restrictions.




---

Usage

1. Run the script: After cloning and installing the dependencies, you can start the script by running:

bash ./ddos_fulcrum.sh


2. Follow the on-screen prompts:

Enter the target IP address.

Choose the type of attack you'd like to perform (ICMP, UDP, TCP, or Port Scan).

Follow the instructions for each attack type.


---

Supported Attacks

1. ICMP Flood

This attack uses ICMP Echo Request packets to flood the target with traffic. This is typically used to overwhelm the target network or system with pings.

2. UDP Flood

This attack uses random UDP packets to flood a target port. You can specify the target port, or choose to attack all available ports.

3. TCP Flood

This attack generates TCP SYN packets, typically used in SYN flood attacks to exhaust a target's resources.

4. Port Scanning

Basic Scan: Uses Nmap to scan for open ports on the target machine.

Advanced Nmap Scanning: Offers more detailed scanning features, including service detection, OS detection, and more.


5. Simple UDP Flood

A Python-based UDP flood that can be used on devices where raw socket access is restricted (e.g., unrooted Android devices).
