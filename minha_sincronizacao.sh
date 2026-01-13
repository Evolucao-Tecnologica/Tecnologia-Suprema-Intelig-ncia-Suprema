#!/bin/bash
# ATIVAÇÃO DA SOBERANIA - ADEMARID

echo "🚀 Iniciando Protocolo de Segurança Nuclear..."

# Validar Assinatura
if [ ! -f "minha_assinatura.key" ]; then
    echo "❌ ERRO: Assinatura de DNA não encontrada!"
    exit 1
fi

# Rodar a Trindade
python3 meu_cerebro_integrado.py &
./build/meu_motor_nuclear &

echo "✅ Sistema Totalmente Ativo e Blindado."
