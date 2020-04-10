#!/bin/bash
windowID="$(xprop -root '\t$0' _NET_ACTIVE_WINDOW | cut -f 2)"
    
if [ "$1" = "install-font" ]; then
    echo "ttf-mscorefonts-installer" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "remove-font" ]; then
    echo "ttf-mscorefonts-installer" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "install-flash" ]; then
    echo "adobe-flashplugin" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi


if [ "$1" = "remove-flash" ]; then
    echo "adobe-flashplugin" | sed 's/$/\ /;s/--remove //' | sed 's/\ /\ uninstall\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "remove-widevine" ]; then
    rm -f /usr/lib/chromium-browser/libwidevinecdm.so
fi

if [ "$1" = "config-javaws" ]; then
    itweb-settings
fi

if [ "$1" = "install-javaws" ]; then
    echo "icedtea-netx" | sed 's/$/\ /;s/--install //' | sed 's/\ /\ install\r\n/g' > /tmp/bigsynaptic$$
    synaptic --parent-window-id "$windowID" --set-selections --non-interactive -o Synaptic::closeZvt=true --hide-main-window < /tmp/bigsynaptic$$
fi

if [ "$1" = "install-widevine" ]; then
    /usr/share/bigbashview/bcc/apps/flash-javaws-widevine-fonts/firefox.run
fi