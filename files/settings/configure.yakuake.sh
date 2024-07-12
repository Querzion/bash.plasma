#!/bin/bash

# Starting Yakuake based on user preferences. Information based on https://forums.gentoo.org/viewtopic-t-873915-start-0.html
# Adding sessions from previous website is broken, use this: http://pawelkoston.pl/blog/sublime-text-3-cheatsheet-modules-web-develpment/

# This line is needed in case Yakuake does not accept fcitx inputs.
/usr/bin/yakuake --im /usr/bin/fcitx --inputstyle onthespot &

# gives Yakuake a couple seconds before sending dbus commands
sleep 2

# Opens multiple tabs
INITIAL_ID=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.activeSessionId`
function addSession {
    SESSION_ID=`qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession`
    qdbus org.kde.yakuake /yakuake/tabs setTabTitle $SESSION_ID "$1"
    if [ ! -z "$2" ]; then
        qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal $SESSION_ID "$2"
    fi
}

# Add addSession with a name and command, and it will start up as Yakuake starts.

# sessions:	  name:		  command:
 addSession 	"User" 		"fastfetch"
 addSession 	"bTop" 		"btop"



 qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.removeSession $INITIAL_ID

