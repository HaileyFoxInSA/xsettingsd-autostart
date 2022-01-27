# xsettingsd-autostart
Dumps X11 application settings from the GNOME Settings Daemon, and exports them via a small daemon that impliments the FreeDesktop.Org XSETTINGS specification. 

__*Installing on Fedora GNU/Linux :*__
* Update dnf package DB cache
>     sudo dnf makecache --refresh 

* Install the xsettingsd package
>     sudo dnf -y install xsettingsd 

* Install glue script 
>     sudo cp xsettingsd-autostart.sh /usr/local/bin/ 
>     
>     sudo chmod +x /usr/local/bin/xsettingsd-autostart.sh 

* Install the companion .desktop file 
>     sudo cp xsettingsd-autostart.desktop /etc/xdg/autostart/ 
