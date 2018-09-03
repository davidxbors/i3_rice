# My first rice!

This is my first rice so it might not be perfect! If you like it feel free to clone the repo :)

## Dependencies:
In order to have exacty what you saw in my gif/screenshots you should have installed:

* [urxvt terminal](https://wiki.archlinux.org/index.php/Rxvt-unicode)
* [ranger file manager](https://wiki.archlinux.org/index.php/Ranger)
* [cava audio visualizer](https://aur.archlinux.org/packages/cava/)
* [spotify](https://aur.archlinux.org/packages/cava/) or [cmus](https://aur.archlinux.org/packages/cava/)
* [i3wm + i3gaps + i3blocks](https://wiki.archlinux.org/index.php/I3)
* [noto-fonts-emoji](https://aur.archlinux.org/packages/ttf-noto/)

In order for all the scripts & keybindings to work fine, you should have installed:

* all my dotfiles
* [ffmpeg](https://wiki.archlinux.org/index.php/FFmpeg)

## .vimrc big update soon!

My .vimrc has not many functionalities, more to be added in 1-2 days!

## Functionalities

### i3
I have keybindings in i3 for:

* opening Firefox: Mod4+Shift+f
* opening Spotify: Mod4+Shift+m
* opening Android Studio: Mod4+Shift+p 
* taking a screenshot: Mod4+Shift+z, saves it in ~/Desktop/screenshots/
* change volume using \<F10>(mute) \<F11>(lower by 5%) \<F12>(higher by 5%)

TODO: make the [startRecording && stopRecording](#startRecording) to work from keybindings
TODO2: make the [dmenumount && dmenuumount](#dmenumount) to work from keybindings

### i3blocks
I have the following blocks for i3blocks:

* user welcome -> "Welcome, %YOURUSERNAME%"
* weather -> Shows the weather for a hardcoded city in this format: CITY EMOJI CORESPONDING THE WEATHER CONDITIONS DEGREES CELSIUS OUTSIDE. If you want it to work for you edit the .scripts/weather script!
* update checker -> Shows a white dot if no update is necessary, a black dot and the number of packages to update if there are updates available
* volume -> shows the volume, also has mouse controls: right-click -> mute, scroll-up -> volume up by 5%, scroll-down -> volume down by 5%
* home space free -> shows how much free space there is left in home
* battery -> shows how much battery is left and the status: Charging / Not Charging
* date & time -> shows year-month-day hour:min:sec
* melody -> shows the current playing melody! I have 2 scripts to see what is playing in cmus and in spotify even if they play in the same time. It has mouse controls: left-click -> prev, middle-click -> pause (the color of the text becomes pinky), right-click -> next
* caps / num -> shows if I have caps / num activated

### ranger
I have the following modified things for ranger:

* preview_images true
* goto bindings: formed from g + 

	* do = Documents
	* D = downloads
	* de = desktop
	* it = Documents/git
	* c = .config
	* w = Downloads/wall
	* i have folder in my documents folder named deutsch that, but I don't think you have it so you might want to remove the line 401 from rc.conf

* move bindings: formed from M +

	* d = Documents
	* D = Downloads
	* desk = desktop
	* git = Documents/git
	* deutsch = Documents/deutsch (you might want to delete line 410 as well)
	* c = .config
	* w = Downloads/wall

* copy bindings: formed from c + (same thing as above)
* util bindings: 

	* bg -> sets the image you are previewing to be the background and with wal sets a proper color scheme for it, but if you want to make the change permanent you should check .config/i3/config file
	* X -> extracts an archive
	* VI -> opens in vim the file you are previewing
	* vim -> opens vim

### scripts
I have the following scripts in the .scripts folder (some of them are being used by programs listed above)

* bat -> used by i3blocks for the battery block
* compile -> it\'s deprecated here, check [this](#compilebin)
* <a name="dmenumount"></a> dmenumount -> mounts an usb using a dmenu (stolen from Luke Smith)
* dmenuumount -> unmounts an usb using a dmenu (stolen from the same dank guy as above)
* makeproj -> makes a project for different kinds of programming languages + Latex
* media + media2 -> used by i3blocks to give me what music is playing in cmus / spotify
* <a name="startRecording"></a> startRecording -> script to start recording the screen! it has 2 modes (working): normal (you just type bash startRecording) and mute (type: bash startRecording mute). Mute doesn't record the mic, while normal does
* stopRecording -> script to stop the recording started by the script above
* updatechecker -> used by i3blocks for the updates block
* volume -> used by i3blocks for the volume block
* weather -> used by i3blocks for the weather block
* deadkeys.vim -> used by vim for the deadkeys feature

### bin
It has the following commands:

* <a name="compilebin"></a> compile -> compiles .cpp, .java, and .tex files. It also runs the executable!
* dmenumount -> same as dmenumount from scripts
* extract -> used by ranger to extract archives
* makeproj -> same as makeproj from .scripts
* screenshot -> takes a screenshot and saves it to ~/Desktop/screenshots/

### .vimrc
It has the following functionalities:

* number for lines
* Ctrl + c copys text to clipboard
* Ctrl + v pastes text from clipboard
* \<space>\<space>d activates [deadkeys]("#deadkeysvim")
* \<space>\<tab> goes to the closest <++> (for navigation)
* \<F3> shows word count (for latex there is a special function so it only counts actual word not things like \\end{document}
* \<F9> compiles .cpp and .tex files
* Latex snippets:

	* ,s = \\subsection{}
	* ,s\* = \\subsection*{}

#### <a name="deadkeysvim"></a> deadkeysvim
Because a lot of my work means that I have to work with some deadkeys, I have stolen Luke Smith\'s ideea and implemented to be good for my purposes. It has the following bindings:

* " + A/O/U/a/o/u = that letter with umlaut
* You should have a font capable of reproducing Romanian special characters to see this:
* ) + a/A = ă
* ^ + a/i/A/I = â/î/Â/Î
* , + s/t/S/T = ș/ț/Ș/Ț

