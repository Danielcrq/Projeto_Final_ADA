# Usa uma imagem base oficial
FROM node:18-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de dependências e instala
COPY package*.json ./
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . ./Projeto_Final_ADA

# Expõe a porta que a aplicação utiliza
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]
