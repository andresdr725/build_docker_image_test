# 1. Usamos una imagen oficial de Node
FROM node:18-alpine

# 2. Creamos un directorio dentro del contenedor
WORKDIR /app

# 3. Copiamos package.json y package-lock.json
COPY package*.json ./

# 4. Instalamos dependencias
RUN npm install

# 5. Copiamos el resto del código
COPY . .

# 6. Exponemos el puerto (opcional pero recomendado)
EXPOSE 3000

# 7. Comando de arranque
CMD ["node", "index.js"]
