# Usa l'immagine ufficiale di Node.js
FROM node:18-alpine

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file di dipendenze e installale
COPY package.json package-lock.json ./
RUN npm install --production

# Copia il resto dell'app
COPY . .

# Esponi la porta dell'app (assumendo che il tuo server usi la porta 3000)
EXPOSE 3000

# Comando per avviare l'app
CMD ["node", "server.js"]
