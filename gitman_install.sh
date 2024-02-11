#!/bin/bash
install() {
	chmod +x pfetch
	mv pfetch "$GITMAN_BIN"/pfetch
}

uninstall() {
	rm "$GITMAN_BIN"/pfetch
}

update(){
	install
}

if [ $1 = "install" ] ; then 
	install
elif [ $1 = "uninstall" ] ; then
	uninstall
elif [ $1 = "update" ] ; then
	update
else
	echo unknown option
	exit 1
fi
