# Escolhe sempre a imagem Node.js mais recente
to use the latest version
FROM node:latest

# Define o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copia somente os arquivos de dependências para cache de build
COPY package*.json ./

# Instala as dependências definidas no package.json
enus RUN npm install

# Copia todo o código-fonte para o diretório de trabalho
COPY . .

# Caso seu projeto precise de build (Next.js, React, TypeScript etc.), descomente a linha abaixo e ajuste script:
# RUN npm run build

# Expõe a porta que seu app usa (ajuste se necessário)
EXPOSE 3000

# Comando padrão para iniciar a aplicação
enus CMD ["npm", "start"]