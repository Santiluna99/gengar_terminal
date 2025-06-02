#!/bin/bash

# Arte ASCII
ascii_art=(
    "⣿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⣿"
    "⣿⣇⠀⠀⠉⠻⢿⣿⣿⠉⠙⢿⡿⠁⠀⠟⠁⠀⢸⣿⢿⣿⣿⡿⠟⠋⠀⠀⣸⣿"
    "⣿⣿⡀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠋⠁⠀⠀⠀⠀⢀⣿⣿"
    "⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿"
    "⣿⣿⣿⡄⠀⠀⠀⠀⢰⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡆⠀⠀⠀⠀⢀⣿⣿⣿"
    "⣿⣿⣿⣧⠀⠀⠀⠀⢸⣿⣷⡄⠀⠀⠀⠀⠀⠀⢠⣾⣿⡇⠀⠀⠀⠀⣼⣿⣿⣿"
    "⣿⣿⣿⣿⡆⠀⠀⠀⠸⣿⣿⣷⣶⣄⠀⠀⣠⣶⣾⣿⣿⠇⠀⠀⠀⢰⣿⣿⣿⣿"
    "⣿⣿⣿⣿⡇⠀⠀⠀⢀⡀⠉⠉⠉⠁⠀⠀⠈⠉⠉⠉⢀⡀⠀⠀⠀⢸⣿⣿⣿⣿"
    "⣿⣿⣿⠟⠃⠀⠀⠀⠸⣿⣿⣷⣶⣶⣶⣶⣶⣶⣾⣿⣿⠇⠀⠀⠀⠘⠻⣿⣿⣿"
    "⣿⣿⠋⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠙⣿⣿"
    "⣿⡃⠀⠀⠀⡀⠀⠀⠀⠀⠀⠙⠛⠿⠿⠿⠿⠛⠋⠀⠀⠀⠀⠀⢀⠀⠀⠀⢘⣿"
    "⣿⣿⣦⣶⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣶⣴⣿⣿"
    "⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿"
    "⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿"
    "⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⢀⣶⣶⣦⣴⣶⣶⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿" 
)

# Función para mostrar el arte ASCII con desplazamiento
animate_banner() {
    local delay=0.2  # Retardo entre cada movimiento
    local max_spaces=50  # Número máximo de espacios para el desplazamiento

    while true; do
        for ((i = 0; i < max_spaces; i++)); do
            clear  # Limpiar la pantalla
            for line in "${ascii_art[@]}"; do
                printf "%${i}s%s\n" "" "$line" | lolcat  # Desplazar el arte ASCII
            done
            sleep $delay
        done

        for ((i = max_spaces; i >= 0; i--)); do
            clear
            for line in "${ascii_art[@]}"; do
                printf "%${i}s%s\n" "" "$line" | lolcat  # Desplazar el arte ASCII en reversa
            done
            sleep $delay
        done
    done
}

# Ejecutar la animación
animate_banner
