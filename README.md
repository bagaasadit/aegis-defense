# 🛡️ Aegis System Defense (Termux)
> **Hybrid App & Folder Protection with Dead Man's Switch Sentinel**  
> *“The shield that never sleeps, the vault that never fails.”*

[![Platform](https://img.shields.io/badge/Platform-Termux-orange.svg)](https://termux.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Root](https://img.shields.io/badge/Permission-Root%20Required-red.svg)](#)
![Stars](https://img.shields.io/github/stars/bagaasadit/aegis-defense?style=for-the-badge&color=yellow)
![Forks](https://img.shields.io/github/forks/bagaasadit/aegis-defense?style=for-the-badge&color=blue)
![Issues](https://img.shields.io/github/issues/bagaasadit/aegis-defense?style=for-the-badge&color=red)

**Aegis System Defense** is an advanced security utility for Termux designed to instantly hide applications and sensitive folders using low-level system manipulation. 

The **Hybrid Edition** integrates Android package state control (`pm disable`) with stealthy filesystem masking, ensuring your private data remains invisible even if your device falls into the wrong hands.

---

## ✨ Key Features (v2.0 Hybrid)

- **🛡️ Sentinel Monitoring 2.0**  
  An intelligent background daemon that monitors the "heartbeat" of your Termux session.
- **💀 Dead Man’s Switch**  
  If Termux is closed, force-stopped, or the screen turns off → **INSTANT LOCKDOWN** is triggered automatically.
- **📂 Hybrid Protection**  
  Supports both App Hiding and Folder Locking (Gallery/Files) using stealthy `.nomedia` masking techniques.
- **🚀 Turbo Caching & Resolver**  
  Blazing fast app searching and listing powered by an `aapt` binary cache system.
- **🎨 Modern Terminal UI**  
  Features Progress Bars, Spinners, and Semantic Colors for a professional command-line experience.
- **🔗 Intelligent CLI & Interactive Mode**  
  Switch between a user-friendly interactive menu and efficient one-liner CLI commands.

---

## 🚦 Operational Logic

| Mode | Sentinel Status | Effect |
| :--- | :---: | :--- |
| **Lockdown** (`aegis h`) | 🔴 OFF | All target apps and folders are completely hidden. |
| **Unlock** (`aegis u`) | 🟢 ACTIVE | System is accessible but monitored. Closing Termux triggers auto-lock. |
| **Free Roam** (`aegis free`) | ⚪ DISABLED | Protection disabled. Apps stay visible even after Termux is closed. |

---

## ⚠️ Prerequisites

1. **Rooted Android Device** (Mandatory for system package manipulation).
2. **Termux** (Latest version).
3. **Termux:API** (Required for status notifications).

---

## 📥 Installation

### Option 1: Quick Install
Copy & paste into Termux:
```bash
curl -o $PREFIX/bin/aegis https://raw.githubusercontent.com/bagaasadit/aegis-defense/main/aegis
chmod +x $PREFIX/bin/aegis
```

### Option 2: Git Clone (Manual)
```bash
git clone https://github.com/bagaasadit/aegis-defense.git
cd aegis-defense
chmod +x aegis
cp aegis $PREFIX/bin/
```

---

## 🎮 Command Guide

| Command | Description |
| :--- | :--- |
| `aegis` or `aegis menu` | Launch the **Interactive Menu** (Recommended). |
| `aegis u` | **Unlock:** Unhide all targets and activate Sentinel. |
| `aegis h` | **Hide:** Manually trigger immediate lockdown. |
| `aegis free` | **Permanent Show:** Unhide targets without Sentinel watch. |
| `aegis search <key>` | Fast search and add apps by name. |
| `aegis folder` | Open folder explorer to protect local directories. |
| `aegis list` | View all currently protected apps and folders. |
| `aegis status` | Check Sentinel health and protection statistics. |
| `aegis refresh` | Rebuild the local application name database. |

---

## 🛠️ How the Sentinel Works

The Aegis Sentinel runs as a background process. It is designed to trigger a **Lockdown** sequence if any of the following events are detected:
1. **Screen Off:** User presses the power button or screen times out.
2. **Session Kill:** Termux is swiped away from the "Recent Apps" list.
3. **OOM Kill:** Android OS kills Termux to reclaim memory.

---

## ⚠️ Disclaimer

This tool modifies Android system package states. Use at your own risk. Always remember which applications or folders you have hidden before uninstalling the script or clearing Termux data.

---
**Developed with ❤️ for the Privacy Community.**