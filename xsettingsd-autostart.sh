#!/bin/sh
#
# Dumps X11 application settings from the GNOME Settings Daemon, and 
# exports them via a small daemon that impliments the FreeDesktop.Org 
# XSETTINGS specification. 
#
# XSETTINGS : 
# 	The XSETTINGS protocol provides a mechanism for applications written 
# 	with different toolkits to share simple configuration settings such 
# 	as double-click-times and background colors. 
#		( https://www.freedesktop.org/wiki/Specifications/xsettings-spec/ ) 
#
# GNOME Settings Daemon : 
# 	The daemon sharing settings from GNOME to GTK+/KDE applications. 
# 		( https://download.gnome.org/sources/gnome-settings-daemon ) 
#
# xsettingsd : 
# 	A small daemon that implements the FreeDesktop.org XSETTINGS specification. 
# 		( https://github.com/derat/xsettingsd ) 
#
# This script : 
# 	Just some glue to make life a little easier, it has a companion .desktop 
# 	file that automatically runs this script under the FreeDesktop.org Autostart 
# 	specification ( https://www.freedesktop.org/wiki/Specifications/autostart-spec/ ). 
#
# 	Installing on Fedora GNU/Linux : 
#		# Update dnf package DB cache 
# 		sudo dnf makecache --refresh 
#
#		# Install the xsettingsd package 
# 		sudo dnf -y install xsettingsd 
#
#		# Install this script 
# 		sudo cp xsettingsd-autostart.sh /usr/local/bin/ 
# 		sudo chmod +x /usr/local/bin/xsettingsd-autostart.sh 
#
# 		# Install the companion .desktop file 
# 		sudo cp xsettingsd-autostart.desktop /etc/xdg/autostart/ 
#
###############################################################################################################
dump_xsettings > $HOME/.xsettingsd 
killall -HUP xsettingsd 
xsettingsd & 
