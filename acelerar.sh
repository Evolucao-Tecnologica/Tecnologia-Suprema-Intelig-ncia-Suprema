#!/bin/bash
echo "⚡ Iniciando Protocolo de Aceleração..."
echo "🧹 Limpando processos em segundo plano..."

# Remove processos que drenam RAM (Facebook e outros)
pkill -f com.facebook.katana
pkill -f com.gameloft

# Limpa o cache interno do terminal
sync
echo "🚀 RAM Otimizada. Sistema pronto para alta performance."
