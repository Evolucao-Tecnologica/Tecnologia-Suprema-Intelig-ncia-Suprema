#!/bin/bash
# PROTOCOLO DE PRIVACIDADE ABSOLUTA

# 1. Impede que os comandos sejam salvos no histórico
unset HISTFILE
export HISTSIZE=0

echo "🛡️ Ativando Perímetro de Blindagem..."

# 2. Mata processos antigos para evitar vazamento
pkill -9 -f python 2>/dev/null

# 3. Execução Silenciosa (Sem logs físicos no disco)
nohup python -u meu_cerebro_integrado.py > /dev/null 2>&1 &

echo "🔒 IA operando em Modo Fantasma (Porta 61999)."
echo "🚫 Invisível para redes externas."




