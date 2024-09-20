# Usar a imagem oficial do Node.js
FROM node:20

# Definir o diretório de trabalho dentro do container
WORKDIR /usr/src/app

# Copiar package.json e package-lock.json para o container
COPY package.json ./

# Instalar as dependências do Node.js
RUN npm install

# Copiar o código da aplicação para o container
COPY . .

# Expor a porta 8080 (ou a porta definida na variável de ambiente PORT)
EXPOSE 8080

# Definir variáveis de ambiente padrão
ENV HOST=0.0.0.0
ENV PORT=8080

# Comando para rodar a aplicação
CMD ["node", "server.js"]
