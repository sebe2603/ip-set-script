# ⚡ Quick IP Address Setter (Bash Script)

This is a short Bash script designed to quickly assign IPv4 and IPv6 addresses to your active network interface. The script extracts the current IPv4 and IPv6 addresses from your system, selects specific parts of those addresses, and uses them to configure new IP addresses in private address spaces.  
🎓 This project was created as part of a university course.

## ▶️ Usage

Make the script executable:

```bash
chmod +x set_ip.sh
```

Run the script:
```bash
sudo ./set_ip.sh
```

## 🔧 What it does:

- 📥 Retrieves your current IPv4 and IPv6 addresses
- 🌐 Identifies the active network interface
- 🛠️ Assigns:
  - IPv4: `10.2.10.X` (where `X` is the last octet of your original IPv4)
  - IPv6: `fc00:1:1:1::X` (where `X` is the last segment of your original IPv6)
- 🖨️ Prints the newly assigned addresses

