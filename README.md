# Set-Up-OPNsense-Firewall-along-with-Suricata
This project aims to demonstrate the OPNsense Firewall along with Suricata IDPS to block malicious attacks.

---

## 🔧 Technologies Used

- **OPNsense Firewall** (FreeBSD-based open-source firewall)
- **Suricata IDS/IPS** (Integrated in OPNsense)
- **Emerging Threats Ruleset**
- **Kali Linux** (Attacker machine)
- **hping3** (Used to simulate DoS attack)
- **VMware Workstation** (with NAT networking)

---

## 💡 Key Features

- OPNsense configured with WAN on NAT network.
- Suricata set up in IDS and IPS mode.
- Rules enabled to detect TCP floods and suspicious activity.
- DDoS simulation using `hping3` from Kali Linux.
- Alert logs and screenshots before and after attack.
- Exported firewall and Suricata configurations.

---

## 📁 Folder Structure

```bash
Set-Up-OPNsense-Firewall-along-with-Suricata/
├── README.md
├── Abstract.md
├── OPNsense-Config/
│   ├── OPNsense_config.xml
│   ├── Notes.md
├── screenshots/
│   ├── dashboard.png
│   ├── Firewall_SSH_Block_Logs.png
│   ├── Interface_OPT1_Rules.png
│   ├── KALI_DOS_Simulation.png
│   ├── OPNsense_Interfaces.png
│   ├── Suricata_Alerts.png
│   ├── Suricata_Log_File.png
│   ├── TestMyIds_Demo.png
│   ├── Ubuntu_Network_Configuration.png
│   ├── Ubuntu_Nmap_Scan.png
│   └── Windows_11_Network_Configuration.png
└── kali-attack-scripts/
    ├── hping3-ddos.sh
    └── notes.txt
