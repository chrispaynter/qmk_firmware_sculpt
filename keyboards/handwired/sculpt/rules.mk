MCU = at90usb1286
SCULPT_UPLOAD_COMMAND = teensy_loader_cli -w -mmcu=$(MCU) $(TARGET).hex

F_CPU = 16000000
ARCH = AVR8
F_USB = $(F_CPU)

BOOTLOADER = atmel-dfu

# Interrupt driven control endpoint task(+60)
OPT_DEFS += -DINTERRUPT_CONTROL_ENDPOINT

BOOTMAGIC_ENABLE = yes      # Virtual DIP switch configuration(+1000)
MOUSEKEY_ENABLE = yes       # Mouse keys(+4700)
EXTRAKEY_ENABLE = yes       # Audio control and System control(+450)
CONSOLE_ENABLE = yes        # Console for debug(+400)
COMMAND_ENABLE = yes        # Commands for debug and configuration
SLEEP_LED_ENABLE = yes      # Breathing sleep LED during USB suspend
NKRO_ENABLE = no            # USB Nkey Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality on B7 by default
RGBLIGHT_ENABLE = yes 
MIDI_ENABLE = no            # MIDI controls
UNICODE_ENABLE = no         # Unicode
BLUETOOTH_ENABLE = no       # Enable Bluetooth with the Adafruit EZ-Key HID
AUDIO_ENABLE = no           # Audio output on port C6

USB = /dev/cu.usbmodem14141
