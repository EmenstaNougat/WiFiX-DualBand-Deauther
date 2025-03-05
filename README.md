<h1 align="center">WiFiX-DualBand-Deauther - by @emensta & ASP-29</h1>
<div align="center">
  <img src="https://dwdwpld.pages.dev/WiFiX.jpg" alt="WiFiX-DualBand-Deauther">
  <h3 align="center">Educational purposes only!</h3>
</div>
WiFiX-DualBand-Deauther is a powerful tool that allows you to perform deauthentication attacks on both 2.4GHz and 5.8GHz WiFi bands. You can choose to deauth either band individually or both simultaneously, providing full flexibility.

---

<div align="center">
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther" title="Go to GitHub repo">
    <img src="https://img.shields.io/static/v1?label=EmenstaNougat&message=WiFiX-DualBand-Deauther&color=purple&logo=github" alt="EmenstaNougat - WiFiX-DualBand-Deauther">
  </a>
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther">
    <img src="https://img.shields.io/github/stars/EmenstaNougat/WiFiX-DualBand-Deauther?style=social" alt="stars - WiFiX-DualBand-Deauther">
  </a>
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther">
    <img src="https://img.shields.io/github/forks/EmenstaNougat/WiFiX-DualBand-Deauther?style=social" alt="forks - WiFiX-DualBand-Deauther">
  </a>
</div>

<h4 align="center">
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther/edit/main/README.md#make-your-own">Make your own</a>
    <span> | </span>
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther/edit/main/README.md#pinout">Pinout</a>
    <span> | </span>
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther/edit/main/README.md#pcbs">PCB's</a>
    <span> | </span>
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther/edit/main/README.md#flashing-the-firmware">Flashing</a>
    <span> | </span>
  <a href="https://github.com/EmenstaNougat/WiFiX-DualBand-Deauther/edit/main/README.md#gallery">Gallery</a>
    <span> | </span>
  <a href="https://emensta.pages.dev">Website</a>
</h4>

---

## Features
- Deauth both 2.4GHz and 5.8GHz bands
- Choose to attack only 2.4GHz, only 5.8GHz, or both at once
- User-friendly flashing options
- Dedicated PCBs
- still in development, further updates are possible!

---

## What is a Deauther?
A deauther is a device that sends deauthentication frames to disconnect devices from a WiFi network. It exploits a vulnerability in the 802.11 protocol, causing WiFi clients to disconnect temporarily or until they reconnect manually.

**⚠️ Disclaimer:** This project is intended for educational and security research purposes only. Do not use it on networks you do not own or have permission to test.

---

## Make Your Own
To build your own WiFiX-DualBand-Deauther, you will need:

### Required Components:
- **[ESP32 Dev Module](https://s.click.aliexpress.com/e/_onYIVKr)** (**Recommended: ESP32-32U CP2102**)
- **[RTL8720DN BW16](https://s.click.aliexpress.com/e/_opN49fI)**
- **[1.3" OLED I2C 128x64](https://s.click.aliexpress.com/e/_omwHHSU)**
- **[4x Mini Tactile Buttons](https://s.click.aliexpress.com/e/_olGwH5i)**
- **[Prototype PCB](https://s.click.aliexpress.com/e/_oBtd18j)**

### If you're looking to add a battery:
- **[3.7V Li-Ion Battery](https://s.click.aliexpress.com/e/_on04mQ7)**
- **[JST PH 2.0 Connector](https://s.click.aliexpress.com/e/_ooSOhDd)**
- **[TP4056 Charging Module (Micro-USB/Type-C)](https://s.click.aliexpress.com/e/_oCqORHE)**
- **[Mini DC-DC Step-Up-Converter](https://s.click.aliexpress.com/e/_oC9i9Mm)**
- **[Mini Slide Switch](https://s.click.aliexpress.com/e/_ooC8DXh)**

---

## Pinout

### OLED
| OLED Pin | ESP32 |
|----------|----------|
| SCL      | GPIO22   |
| SDA      | GPIO21   |
| VDD      | 3V3      |
| GND      | GND      |

### Buttons
| Button | ESP32 |
|--------|----------|
| UP     | GPIO25   |
| DOWN   | GPIO26   |
| BACK   | GPIO33   |
| SELECT | GPIO32   |

### BW16
| BW16 Pin | ESP32 |
|----------|----------|
| PB1      | GPIO16   |
| PB2      | GPIO17   |
| 3V3      | 3V3      |
| GND      | GND      |

### Charging Circuit
| 3.7V Li-Ion Battery | JST-PH2 Connector | TP4056 Charging Module | Mini Slide Switch | Step-Up Converter | ESP32 |
|---------------------|-------------------|------------------------|-------------------|--------------------|-------|
| (+) Battery         | (+) JST-PH2       | Bat +                  |                   |                    |       |
| (-) Battery         | (-) JST-PH2       | Bat -                  |                   |                    |       |
|                     |                   | OUT +                  | Switch in         |                    |       |
|                     |                   | OUT -                  |                   | IN -               |       |
|                     |                   |                        | Switch out        | IN +               |       |
|                     |                   |                        |                   | OUT +              | 5V    |
|                     |                   |                        |                   | OUT -              | GND   |

---

## Flashing the Firmware
The firmware for WiFiX-DualBand-Deauther can be installed using two different methods:

### via WiFiX-Flasher (Easy)
Simply download the WiFiX-Flasher from the repository files and run the "WiFiX-Flasher-RUN_THIS.bat" file.
It will list all connected COM ports and give you the instruction and choise on which chip you want to flash.
Please remember to first flash your ESP32, then replug the wire physically and redo the process for the BW16 board!

### via webflasher (Easy)  - SOON
![WiFiX-DualBand-DeautherFlasher]()                                                                 
I've created a webflasher to make it super easy for you to flash your ESP32 chip with the ESP32-BlueJammer firmware of your choice!  
- Visit SOON
- Connect your ESP32 via a data USB cable
- Choose your firmware, chip and connect
- Flash the firmware of your choice :D

### Flashing ESP32 via binary files (Advanced)  
- Download the **.bin files** available on this repository
- Use any flasher of your choice
- Flash it :D

---

## Functions
The WiFiX-DualBand-Deauther comes with an intuitive menu system that provides easy navigation through its core functions.

### Main Menu:
- **SCAN**  
  - [BACK]  
  - SCAN APs 2.4GHz  
  - SCAN APs 5GHz  
  - SCAN Stations  
  - SCAN AP 2.4GHz + ST  

- **SELECT**  
  - [BACK]  
  - APs 2.4GHz  
  - APs 5GHz  
  - Stations  
  - SSIDs  

- **ATTACK**  
  - [BACK]  
  - DEAUTH  
  - BEACON  
  - START  

### Webserver
After powering the device, an AP will appear called "WiFiX32", the password to access it is "exploit32".
Thanks to this you will be able to control it by using a web interface.

---

## PCBs
Dedicated PCB designs will be available for a clean and efficient build. More details will be provided soon.

### Available PCB:
**[WiFiX-DualBand-Deauther PCB v1:](https://datechlabs.com/products/dual-band-deauther)**

<img src="https://dwdwpld.pages.dev/datechdeauther.jpg" width="400px">

[Shop](https://datechlabs.com/products/dual-band-deauther)

A second PCB design is in development and will be available soon.

---

## Gallery
<img src="https://github.com/user-attachments/assets/270fe269-201d-4162-a045-4e02e53d3783" width="300" alt="bw16">
<img src="https://github.com/user-attachments/assets/83f304ba-0141-4dc7-a261-4d84cd23e7db" width="300" alt="esp32">
<img src="https://github.com/user-attachments/assets/036cb4d9-6322-4ea6-a47e-bd146b275d3d" width="300" alt="oled">
<img src="https://github.com/user-attachments/assets/9448de7a-5a7c-4dde-963f-0d3183fc7300" width="300" alt="tactile">
<img src="https://github.com/user-attachments/assets/2fc4a46b-0265-4288-b6b7-d2a7dd5a0cb5" width="300" alt="switch">
<img src="https://github.com/user-attachments/assets/824a3bf3-d030-4281-917f-e5d1a83e326d" width="300" alt="tp4056">

---

## Discord
You can join my Discord server [here](https://discord.gg/emensta)!

## Portfolio and all my links
Here you can visit my Portfolio, you'll find everything that you're looking for [here](https://emensta.pages.dev)!

<h1 align="center"> DISCLAIMER </h1>

<h4 align="center">Please note that the use of this tool is entirely at your own risk. It is intended strictly for educational purposes and should not be used for any illegal or unethical activities. Unauthorized use of this tool on networks you do not own is illegal and strictly prohibited.</h4>
<h4 align="center">I'm not responsible for your actions! </h4>
