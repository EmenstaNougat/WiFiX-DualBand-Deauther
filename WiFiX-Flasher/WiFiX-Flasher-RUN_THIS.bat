@echo off
title WifiX Flasher V1.1

:: Menampilkan daftar COM port yang tersedia
echo List:
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\HARDWARE\DEVICEMAP\SERIALCOMM"') do (
    echo %%a
)

:: Meminta input COM port
set /p com_port=Choose the COM port (example: COM4): 

:: Meminta input jenis perangkat (ESP32 atau BW16)
echo Select the hardware:
echo 1. ESP32
echo 2. BW16
set /p choice=1 or 2: 

:: Mengeksekusi perintah berdasarkan pilihan
if "%choice%"=="1" (
    echo writing to ESP32 on port %com_port%...
    esptool.exe --chip esp32 --port %com_port% write_flash 0x1000 esp32_bootloader.bin 0x8000 esp32_partitions.bin 0x10000 esp32_ap.bin
) else if "%choice%"=="2" (
    echo writing to BW16 on port %com_port%...
    amebatool.exe .\bin %com_port% --verbose=5
) else (
    echo Pilihan tidak valid.
)

pause
