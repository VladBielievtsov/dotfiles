1. Copy theme to /usr/share/grub/themes/

```bash
  sudo cp -r /catppuccin-mocha-grub-theme /usr/share/grub/themes/
```

2. Uncomment and edit following line in /etc/default/grub to your theme:

```bash
  GRUB_THEME="/usr/share/grub/themes/catppuccin-mocha-grub-theme/theme.txt"
```

3. Update grub:

```bash
  sudo grub-mkconfig -o /boot/grub/grub.cfg
```
