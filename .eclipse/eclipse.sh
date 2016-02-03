#!/bin/bash

CURRENT_DIR=$(readlink -f $(dirname $0))

export SWT_GTK3=0
env GTK2_RC_FILES=/usr/share/themes/Clearlooks/gtk-2.0/gtkrc:$CURRENT_DIR/.gtkrc-2.0 $ECLIPSE_DIR/eclipse $@
