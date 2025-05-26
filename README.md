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

## 🖼️ Screenshots

| Screenshot Description | Filename |
|------------------------|----------|
| OPNsense Dashboard | `dashboard.png` |
| Alerts before attack | `ids-alerts-before.png` |
| Alerts after attack | `ids-alerts-after.png` |
| Enabled Suricata Rules | `suricata-enabled-rules.png` |
| Firewall Rules | `firewall-rules.png` |
| Attack CLI | `ping-attack.png` |

You can find these in the `screenshots/` folder.

---

## 📁 Folder Structure

```bash
opnsense-ids-ddos-demo/
├── README.md
├── abstract.md
├── opnsense-config/
│   ├── opnsense-full-config.xml
│   ├── enabled-rules.txt
│   ├── fast.log
│   ├── drop.log
│   ├── firewall.log
│   ├── interfaces.txt
│   └── routing-table.txt
├── screenshots/
│   ├── dashboard.png
│   ├── ids-alerts-before.png
│   ├── ids-alerts-after.png
│   ├── firewall-rules.png
│   ├── suricata-enabled-rules.png
│   └── ping-attack.png
└── kali-attack-scripts/
    ├── hping3-ddos.sh
    └── notes.txt
