#!/bin/bash
pkill -9 -f python

rm *.py *.sh *.txt 2>/dev/null
history -c && history -w
echo "☣️ Protocolo de Limpeza Executado. Sistema Neutralizado."
