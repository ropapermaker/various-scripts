# Noise Cancellation

```bash
# edit config file with text editor of your choice: vim, nano, etc.
<editor> /etc/pulse/default.pa

# Add text at the end of the config file

# Noise cancellation
.ifexists module-echo-cancel.so
load-module module-echo-cancel aec_method=webrtc aec_args="analog_gain_control=0 digital_gain_control=1" source_name=mic source_properties=device.description=MicHD
set-default-source "mic"
.endif

# restart pulseaudio and add command at startup
pulseaudio -k
```


# For blurry icons

```bash
sudo pacman -S libappindicator-gtk3
```



# KDE Refresh Rate 144

(https://www.reddit.com/r/kde/comments/brsmqc/gnome_still_handles_highrefresh_rate_monitors/)

**Partial Workaround:** Add `xrandr --rate 144` to `/usr/share/sddm/scripts/Xsetup` if you're using SDDM.




# Adobe Photoshop

[GitHub - Gictorbit/photoshopCClinux: Photoshop CC v19 installer for Gnu/Linux](https://github.com/Gictorbit/photoshopCClinux)




# GPU Passthrough

[1) Preparations · Wiki · Risingprism / Single GPU Passthrough](https://gitlab.com/risingprismtv/single-gpu-passthrough/-/wikis/1)-Preparations)

[GitHub - QaidVoid/Complete-Single-GPU-Passthrough: VFIO Passthrough Guide using Single GPU](https://github.com/QaidVoid/Complete-Single-GPU-Passthrough)




# KDE Configuration Files

[GitHub - shalva97/kde-configuration-files: KDE plasma configration files](https://github.com/shalva97/kde-configuration-files)




# KDE Plasma setup

[KDE Plasma: a complete setup guide](https://medium.com/tech-notes-and-geek-stuff/kde-plasma-a-complete-setup-guide-8cb253d081a5)



# Keyboard Mouse

[GitHub - cwkx/keym: C tool to control mouse with keyboard for X11](https://github.com/cwkx/keym)




# Spicetify

[GitHub - khanhas/spicetify-cli: Commandline tool to customize Spotify client. Supports Windows, MacOS and Linux.](https://github.com/khanhas/spicetify-cli)



# Linux Spotify Adblocker

[GitHub - abba23/spotify-adblock-linux: Spotify adblocker for Linux](https://github.com/abba23/spotify-adblock-linux)




# Convert to PDF

```bash
# needs libreoffice installed
soffice --headless --convert-to pdf <file>
```



# Steam Proton With Lutris

[Here's how you can use Proton with the latest version of Lutris](https://www.reddit.com/r/wine_gaming/comments/kb92nr/heres_how_you_can_use_proton_with_the_latest/)




# Steam Proton Glorious Eggroll

[GitHub - GloriousEggroll/proton-ge-custom: Compatibility tool for Steam Play based on Wine and additional components](https://github.com/GloriousEggroll/proton-ge-custom)



# Lightweight Epic Games Launcher

[GitHub - derrod/legendary: Legendary - A free and open-source replacement for the Epic Games Launcher](https://github.com/derrod/legendary)



# Introduction to Software Development Tooling

https://bernsteinbear.com/isdt/


# Firefox smooth scrolling
# KDE file picker, deps: dg-desktop-portal xdg-desktop-portal-kde

```bash
user_pref("general.smoothScroll.msdPhysics.enabled",   true);
user_pref("general.smoothScroll.msdPhysics.continuousMotionMaxDeltaMS",   250);
user_pref("general.smoothScroll.msdPhysics.motionBeginSpringConstant",   400);
user_pref("general.smoothScroll.msdPhysics.regularSpringConstant",   400);
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaMS",   120);
user_pref("general.smoothScroll.msdPhysics.slowdownMinDeltaRatio",   0.4);
user_pref("general.smoothScroll.msdPhysics.slowdownSpringConstant",   5000);
user_pref("mousewheel.min_line_scroll_amount",   22);
user_pref("toolkit.scrollbox.horizontalScrollDistance",   4);
user_pref("toolkit.scrollbox.verticalScrollDistance",   5);
user_pref("widget.use-xdg-desktop-portal.file-picker",   1);
```

# SimpleFox configs

```bash
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets",   true);
user_pref("layers.acceleration.force-enabled",   true);
user_pref("gfx.webrender.all",   true);
user_pref("svg.context-properties.content.enabled",   true);
```

# gtk3 smaller headerbar

```css
headerbar entry,
headerbar spinbutton,
headerbar button,
headerbar separator {
    margin-top: 0px; /* same as headerbar side padding for nicer proportions */
    margin-bottom: 0px;
}

headerbar {
    min-height: 24px;
    padding-left: 2px; /* same as childrens vertical margins for nicer proportions */
    padding-right: 2px;
    margin: 0px; /* same as headerbar side padding for nicer proportions */
    padding: 0px;
}
```