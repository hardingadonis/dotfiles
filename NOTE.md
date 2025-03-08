# Note

```bash
⣿⣿⣿⠟⠛⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢋⣩⣉⢻⣿⣿⣿
⣿⣿⣿⠀⣿⣶⣕⣈⠹⠿⠿⠿⠿⠟⠛⣛⢋⣰⠣⣿⣿⠀⣿⣿⣿
⣿⣿⣿⡀⣿⣿⣿⣧⢻⣿⣶⣷⣿⣿⣿⣿⣿⣿⠿⠶⡝⠀⣿⣿⣿
⣿⣿⣿⣷⠘⣿⣿⣿⢏⣿⣿⣋⣀⣈⣻⣿⣿⣷⣤⣤⣿⡐⢿⣿⣿
⣿⣿⣿⣿⣆⢩⣝⣫⣾⣿⣿⣿⣿⡟⠿⠿⠦⠀⠸⠿⣻⣿⡄⢻⣿
⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⠇⣼⣿
⣿⣿⣿⣿⣿⣿⡄⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣰⣿⣿
⣿⣿⣿⣿⣿⣿⠇⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⣿⣿⣿
⣿⣿⣿⣿⣿⠏⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿
⣿⣿⣿⣿⠟⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿
⣿⣿⣿⠋⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿
⣿⣿⠋⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢸⣿⣿
```

## Davinci Resolve

- Step 1: Download the installer from the official website, here: [Davinci Resolve](https://www.blackmagicdesign.com/products/davinciresolve/)
- Step 2: Install the software with terminal:

  ```bash
  ./DaVinci_Resolve_xxx_Linux.run
  ```

- Step 3: Open the software, if it doesn't work, try running the following command:

  ```bash
  cd /opt/resolve/libs
  sudo mkdir disabled-libraries
  sudo mv libglib* disabled-libraries
  sudo mv libgio* disabled-libraries
  sudo mv libgmodule* disabled-libraries
  ```

  I found this solution from reddit, [here](https://www.reddit.com/r/davinciresolve/comments/1d7cr2w/optresolvebinresolve_symbol_lookup_error/).

- Step 4: Open the software again, if it doesn't work, try running the following command:

  ```bash
  yay -S rocm-opencl-runtime --noconfirm
  ```

  The reason is that the software requires OpenCL, and the package `rocm-opencl-runtime` provides OpenCL. And it works with my AMD CPU/GPU laptop. More information, please read [wiki](https://wiki.archlinux.org/title/DaVinci_Resolve).

## OBS Studio - Capture audio from specific application

- Install plugin: [obs-pipewire-audio-capture](https://github.com/dimtpap/obs-pipewire-audio-capture)
