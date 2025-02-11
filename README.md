
# Windows Pen-Testing Framework Installer

This is a Windows-based batch script designed to simplify the installation process of multiple penetration testing tools. The script downloads, extracts, and installs a variety of popular penetration testing tools automatically. 

## Tools Included

The script supports the following tools:

- **Nmap**
- **Wireshark**
- **Hashcat**
- **Burp Suite (Community Edition)**
- **SQLMap**
- **Feroxbuster**
- **Nikto**
- **Gobuster**
- **Responder**
- **PowerSploit**

### Tools Overview:
1. **Nmap**: Network exploration and vulnerability scanning tool.
2. **Wireshark**: Network protocol analyzer for network troubleshooting.
3. **Hashcat**: Advanced password recovery tool.
4. **Burp Suite**: Integrated platform for web application security testing.
5. **SQLMap**: Automatic SQL injection and database takeover tool.
6. **Feroxbuster**: Fast directory/file busting tool for web application discovery.
7. **Nikto**: Web scanner to identify vulnerabilities in websites.
8. **Gobuster**: Tool for directory and DNS busting.
9. **Responder**: Tool for detecting and exploiting LLMNR, NBT-NS, and MDNS vulnerabilities.
10. **PowerSploit**: A collection of PowerShell scripts for offensive security.

## Installation Instructions

1. Download the script to your local machine.
2. Open a command prompt (`cmd`) with Administrator privileges.
3. Run the batch file by navigating to the directory where the script is saved and typing the following:

```bash
wptf.bat
```

4. Follow the prompts to select which tools you want to install. You can choose individual tools or select the "All" option to install everything.

## Features

- **Automatic Download**: The script will download the installer files for each tool to a predefined folder.
- **Automatic Installation**: It installs the selected tools automatically without requiring further user interaction.
- **Tool Organization**: Installed tools will be placed in specific directories within `C:\PT_Tools\`.
- **Cleanup**: Once the installation is complete, the script deletes the downloaded installer files to keep your system clean.

## Supported Versions

- Windows 7 and newer.
- The script works on 64-bit systems.

## Requirements

- **Internet Connection**: The script requires an active internet connection to download the tools.
- **Administrator Privileges**: You must run the script as an Administrator to allow installations.

## Troubleshooting

If you encounter issues, ensure:
- Your antivirus software isn’t blocking the script from running.
- You have enough free disk space (at least 1GB free for tool downloads).

## Additional Notes

- Some tools, such as **Wireshark** and **Metasploit**, may require manual configuration or additional steps post-installation. Please refer to the official documentation for each tool for more details.

## License

This script is provided for educational purposes only. Use it responsibly and legally.

---

Enjoy your pen-testing setup! 🚀

---

Made with ❤️ by **D6fault**
```
