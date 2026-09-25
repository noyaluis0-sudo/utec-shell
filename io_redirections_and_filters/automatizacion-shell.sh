#!/bin/bash

# 1. Solicitar datos de la tarea
read -p "Nombre del script: " SCRIPT_NAME
read -p "Comando para resolver la tarea: " SCRIPT_CONTENT

# 2. Crear el archivo (con comillas para evitar errores)
echo "#!/bin/bash" > "$SCRIPT_NAME"
echo "$SCRIPT_CONTENT" >> "$SCRIPT_NAME"

# 3. Dar permisos de ejecución
chmod u+x "$SCRIPT_NAME"

# 4. Verificación visual
echo "--- Contenido del script creado ---"
cat "$SCRIPT_NAME"
echo "-----------------------------------"

# 5. Flujo de Git
git add "$SCRIPT_NAME"
read -p "Escribe el mensaje para el commit: " COMMIT_MSG
git commit -m "$COMMIT_MSG"
git push

echo "🚀 ¡Tarea '$SCRIPT_NAME' completada!"
