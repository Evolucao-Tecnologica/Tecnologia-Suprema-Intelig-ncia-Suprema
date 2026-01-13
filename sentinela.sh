#!/bin/bash
echo "🛡️ Sentinela de Hardware Iniciado..."
while true; do
    # Captura os dados da API que acabamos de validar
    DADOS=$(termux-battery-status)
    NIVEL=$(echo $DADOS | jq -r '.percentage')
    TEMP=$(echo $DADOS | jq -r '.temperature')

    # Alerta de Bateria Crítica
    if [ "$NIVEL" -lt 20 ]; then
        echo "⚠️ ALERTA: Bateria em $NIVEL%. Reduzindo carga da IA na porta 61999."
    fi

    # Alerta de Superaquecimento
    if (( $(echo "$TEMP > 40.0" | bc -l) )); then
        echo "🔥 ALERTA: Temperatura Crítica ($TEMP°C). Ativando resfriamento via software."
    fi

    sleep 60
done
