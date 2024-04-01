# Utilizar la imagen base de Node.js
FROM node:14

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el package.json e instalar las dependencias
COPY package*.json ./
RUN npm install

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto 9000
EXPOSE 9000

# Comando para iniciar la aplicación
CMD ["npm", "start"]