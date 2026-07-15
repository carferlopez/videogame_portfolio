#!/bin/bash
# Servidor local para la playa 3D — necesario para que carguen los modelos GLB.
# Doble clic y se abre solo en el navegador. Ctrl+C en esta ventana para parar.
cd "$(dirname "$0")"
( sleep 1 && open "http://localhost:8123/index.html" ) &
python3 -m http.server 8123
