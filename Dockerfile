# Use a imagem oficial do Node.js como base
FROM node:latest

# Cria e define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia os arquivos do diretório local para o diretório de trabalho do contêiner
COPY . .

# Instala as dependências do projeto
RUN yarn

# Expõe a porta 3000 para que a API seja acessível externamente
EXPOSE yarn

# Comando para iniciar a aplicação quando o contêiner for iniciado
CMD ["yarn", "start"]