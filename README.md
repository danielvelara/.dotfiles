<h2 align="center"> ━━━━━━  ❖  ━━━━━━ </h2>

# ~/.dotfiles

<p align="center">
   <img src="https://user-images.githubusercontent.com/13500134/150906114-216d4c5b-06f0-4ef4-a6d9-9087f2bc33b2.png" width="200"/>
</p>


```bash
sudo pacman -Syu
sudo pacman -S git
git clone https://github.com/danielvelara/.dotfiles ~/.dotfiles
sh ~/dotfiles/install.sh
```

## Setup

| Program                  | Name                                                                                                                               |
| ------------------------ | ---------------------------------------------------------------------------------------------------------------------------------- |
| **Operating System**     | [Arch Linux](https://archlinux.org/)                                                                                               |
| **Boot Loader**          | [GNU grub](https://www.gnu.org/software/grub/)                                                                                     |
| **Display Manager**      | [lxdm](https://wiki.archlinux.org/title/LXDM)                                                                                      |
| **Service Manager**      | [systemd](https://systemd.io/)                                                                                                     |
| **Window Manager**       | [i3-gaps](https://github.com/Airblader/i3)                                                                                         |
| **Compositor**           | [jonaburg/picom](https://github.com/jonaburg/picom)                                                                                |
| **Network Manager**      | [NetworkManager](https://networkmanager.dev/)                                                                                      |
| **Notification Manager** | [Dunst](https://dunst-project.org/)                                                                                                |
| **Audio Manager**        | [PipeWire](https://pipewire.org/)                                                                                                  |
| **Brightness Manager**   | [brightnessctl](https://github.com/Hummer12007/brightnessctl)                                                                      |
| **Printing Manager**     | [cups](https://www.cups.org/)                                                                                                      |
| **Session lock**         | [slock + xautolock](https://tools.suckless.org/slock/)                                                                             |
| **Application Launcher** | [rofi](https://github.com/davatorium/rofi)                                                                                         |
| **Status Panel**         | [Polybar](https://polybar.github.io/)                                                                                              |
| **Terminal**             | [Alacritty](https://alacritty.org/)                                                                                                |
| **Shell**                | [zsh](https://www.zsh.org/) <br> + [Oh My Zsh](https://ohmyz.sh/) <br> + [Powerlevel10k](https://github.com/romkatv/powerlevel10k) |
| **Terminal Multiplexer** | [tmux](https://github.com/tmux/tmux/wiki)                                                                                          |

## Applications

| Applicaton         | Name                                                                                                                                           |
| ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| File Manger        | [lf](https://github.com/gokcehan/lf) + [ueberzug](https://github.com/seebye/ueberzug) <br> & [thunar](https://docs.xfce.org/xfce/thunar/start) |
| Browser            | [Brave](https://brave.com/) <br> & [LibreWolf](https://librewolf.net/)                                                                         |
| RSS Reader         | [Newsboat](https://newsboat.org/)                                                                                                              |
| Mail Reader        | [NeoMutt](https://neomutt.org/) + [Muttwizard](https://muttwizard.com/)                                                                        |
| Editor             | [neovim](https://neovim.io/) <br> & [VSCodium](https://vscodium.com/)                                                                          |
| PDF Reader         | [zathura](https://pwmt.org/projects/zathura) + [Catppuccin](https://github.com/catppuccin/zathura)                                             |
| Image Viewer       | [imv](https://sr.ht/~exec64/imv/)                                                                                                              |
| Ebook Management   | [Calibre](https://calibre-ebook.com/)                                                                                                          |
| SRS                | [Anki](https://apps.ankiweb.net)                                                                                                               |
| Music Player       | [mpd](https://www.musicpd.org) + [mpc](https://www.musicpd.org/clients/mpc/) + [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)                   |
| Video Player       | [mpv](https://mpv.io/)                                                                                                                         |
| Video Recording    | [OBS](https://obsproject.com/)                                                                                                                 |
| Video Editor       | [Kdenlive](https://kdenlive.org/en/)                                                                                                           |
| Video Converter    | [HandBrake](https://handbrake.fr/) <br> & [FFmpeg](https://ffmpeg.org/)                                                                        |
| System Monitor     | [bottom](https://github.com/ClementTsang/bottom)                                                                                               |
| Screenshot Utility | [Flameshot](https://flameshot.org/) <br> & [scrot](https://github.com/resurrecting-open-source-projects/scrot)                                 |
| Image Editor       | [GIMP](https://www.gimp.org/) <br> & [ImageMagick](https://imagemagick.org/)                                                                   |
| Firewall           | [ufw](https://launchpad.net/ufw)                                                                                                               |
| VPN                | [ProtonVPN](https://protonvpn.com/) + [protonvpn-cli](https://github.com/ProtonVPN/linux-cli)                                                  |
| Calculator         | [Qalculate!](https://qalculate.github.io/)                                                                                                     |
| File Converter     | [Pandoc](https://pandoc.org/)                                                                                                                  |
| Presentation Tool  | [Beamer](https://ashwinschronicles.github.io/beamer-slides-using-markdown-and-pandoc) <br> & [slides](https://github.com/maaslalani/slides)    |

## Tools

| Tool               | Name                                                   |
| ------------------ | ------------------------------------------------------ |
| Database Tools     | [usql](https://github.com/xo/usql)                     |
| API Client         | [httpie](https://httpie.io/)                           |
| Torrent Client     | [aria2](https://aria2.github.io/)                      |
| Music Downloader   | [spotDL](https://github.com/spotDL/spotify-downloader) |
| Speech Synthesizer | [eseapk-ng](https://github.com/espeak-ng/espeak-ng)    |
| Accouting          | [hledger](https://hledger.org/)                        |
| File Transfer      | [qrcp](https://github.com/claudiodangelis/qrcp)        |

## Browser

<details>
<summary><code>Chromium Extensions</code> </summary>

- Developer
  - [SeleniumIDE](https://chrome.google.com/webstore/detail/selenium-ide/mooikfkahbdckldjjndioackbalphokd)
  - [Wappalyzer](https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg)
  - [BuiltWith](https://chrome.google.com/webstore/detail/builtwith-technology-prof/dapjbgnjinbpoindlpdmhochffioedbn)
  - [WhatRuns](https://chrome.google.com/webstore/detail/whatruns/cmkdbmfndkfgebldhnkbfhlneefdaa)
  - [React Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoieni)
  - [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibl)
  - [VisBug](https://chrome.google.com/webstore/detail/visbug/cdockenadnadldjbbgcallicgledbe)
  - [Web Developer](https://chrome.google.com/webstore/detail/web-developer/bfbameneiokkgbdmiekhjnmfkcnldhhm?hl=es)
  - [Visbug](https://chrome.google.com/webstore/detail/visbug/cdockenadnadldjbbgcallicgledbeoc/)
- Productivity
  - [ReadAloud](https://chrome.google.com/webstore/detail/read-aloud-a-text-to-spee/hdhinadidafjejdhmfkjgnolgimiaplp)
  - [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb/)
  - [JSONViewer](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh/related)
  - [UniversalBypass](https://github.com/Sainan/Universal-Bypass)
  - [Markdown Here](https://chrome.google.com/webstore/detail/markdown-here/elifhakcjgalahccnjkneoccemfahfoa)
  - [MS Editor](https://chrome.google.com/webstore/detail/microsoft-editor-spelling/gpaiobkfhnonedkhhfjpmhdalgeoebfa)
  - [ViewImage](https://chrome.google.com/webstore/detail/view-image/jpcmhcelnjdmblfmjabdeclccemkghjk)
  - [Bypass Paywall](https://github.com/iamadamdev/bypass-paywalls-chrome)
  - [Simple Allow Copy](https://chrome.google.com/webstore/detail/simple-allow-copy/aefehdhdciieocakfobpaaolhipkcpgc)
- YouTube QoL
  - [Unhook](https://chrome.google.com/webstore/detail/unhook-remove-youtube-rec/khncfooichmfjbepaaaebmommgaepoid)
  - [SponsorBlock](https://chrome.google.com/webstore/detail/sponsorblock-for-youtube/mnjggcdmjocbbbhaepdhchncahnbgone)
  - [VideoSpeedController](https://chrome.google.com/webstore/detail/video-speed-controller/nffaoalbilbmmfgbnbgppjihopabppdk)
  - [h264ify](https://chrome.google.com/webstore/detail/h264ify/aleakchihdccplidncghkekgioiakgal)
  - [Return YouTube Dislike](https://chrome.google.com/webstore/detail/return-youtube-dislike/gebbhagfogifgggkldgodflihgfeippi)
- Privacy
  - [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
  - [ClearURLs](https://chrome.google.com/webstore/detail/clearurls/lckanjgmijmafbedllaakclkaicjfmnk)
  - [Decentraleyes](https://chrome.google.com/webstore/detail/decentraleyes/ldpochfccmkkmhdbclfhpagapcfdljkj)
  - [Keepa](https://chrome.google.com/webstore/detail/neebplgakaahbhdphmkckjjcegoiijjo)
  - [libredirect](https://github.com/libredirect/libredirect)

</details>

---

<details>
<summary><code>VSCode Extensions</code></summary>

### Languages

[C/C++](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)
[C/C++ Compile Run](https://marketplace.visualstudio.com/items?itemName=danielpinto8zz6.c-cpp-compile-run)
[Go](https://marketplace.visualstudio.com/items?itemName=golang.Go)
[Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
[Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)
[Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
[Quokka.js](https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode)

### Appearance

[GitHub Theme](https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme)
[Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox)

### Tools

[AWS](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-toolkit-vscode)
[AWS CloudFormation Auto-template Generator](https://marketplace.visualstudio.com/items?itemName=john-goldsmith.vscode-aws-cloudformation-auto-template-generator)
[CloudFormation](https://marketplace.visualstudio.com/items?itemName=aws-scripting-guy.cformf)
[GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
[Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

### Git

[Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
[Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)

### Other

[Thunder Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client)
[Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
[node-snippets](https://marketplace.visualstudio.com/items?itemName=chris-noring.node-snippets)
[Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)
[ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)
[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
[Live Share](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare)
[Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
[SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools)
[SQLTools SQLite](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools-driver-sqlite)
[Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
[ES7+ React/Redux/React-Native snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets)
[Glean](https://marketplace.visualstudio.com/items?itemName=wix.glean)
[JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
[fastapi-snippets](https://marketplace.visualstudio.com/items?itemName=damildrizzy.fastapi-snippets)
[flask-snippets](https://marketplace.visualstudio.com/items?itemName=cstrap.flask-snippets)
[Auto Import](https://marketplace.visualstudio.com/items?itemName=steoates.autoimport)
[Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
[Python Indent](https://marketplace.visualstudio.com/items?itemName=KevinRose.vsc-python-indent)
[Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)
[autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring)
[Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
[Spanish - Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker-spanish)
[HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)
[CSS Peek](https://marketplace.visualstudio.com/items?itemName=pranaygp.vscode-css-peek)
[IntelliSense for CSS class names in HTML](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)
[JavaScript Booster](https://marketplace.visualstudio.com/items?itemName=sburg.vscode-javascript-booster)
[Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
[Jinja](https://marketplace.visualstudio.com/items?itemName=wholroyd.jinja)
[Jinja Snippets](https://marketplace.visualstudio.com/items?itemName=noxiz.jinja-snippets)

</details>

## Anki Extensions

- Heatmap: Manual Install
- Image Occlusion: 1374772155
- ProgrssBar: 2091361802
- Syntax Highlighting for Code: 1463041493
- Anki Simulator: 817108664
- Frozen Fields: 516643804
- Advanced Review Bottom Bar: 1136455830

## CalyxOS

- Entertainment
  - AntennaPod
  - lichess
  - RetroMusic
  - Spotify
- Learning
  - AnkiDroid
  - Guitar Tuna
  - Tabs
- Banking
  - BBVA
  - muun
  - Nubank
  - Sivale
- System
  - Chromium
  - AuroraStore
  - F-Droid
  - mpv
  - MuPDF
  - Termux
- Utilities
  - GMaps
  - GoogleCamera
  - QR Scanner
  - OrganicMaps
  - Notebloc
  - Parkimovil
  - WhatsApp
  - Trail Sense
  - Record Voice
