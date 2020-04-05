#!/bin/bash

mcloud && echo "Befehl 1 ausgeführt, synchronisiere ..."\
&& rsync -av ~/ncloud/org ~/Backup/ && echo "Backup ausgeführt"

echo "das hier dürfte erst kommen, wenn synchronisiert wurde"
# Emacs starten
emacs  ~/ncloud/org/htasks.org && echo "alle Befehle ausgeführt" \
&& rsync -av ~/ncloud/org ~/Backup/ && echo "Backup ausgeführt"
