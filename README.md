This builds a module called `thinkpadacpi`, which is a replacement for `thinkpad_acpi`.

The difference is it exposes all the laptop's LEDs in /sys/class/leds; not only the safe ones (the default config in Arch's kernel builds).

To disable thinkpad_acpi so this can take over:

```bash
sudo tee /etc/modprobe.d/blacklist-thinkpad-acpi.conf <<< 'blacklist thinkpad_acpi'
```
