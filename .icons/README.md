#### Create Symlinks

```bash
sudo ln -s ~/.icons/catppuccin-mocha-dark-cursors /usr/share/icons/catppuccin-mocha-dark-cursors
```

#### Reapply Cursor Theme

```bash
xrdb -merge ~/.Xresources
```

```bash
xsetroot -cursor_name left_ptr
```
