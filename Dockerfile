# Usa a versão LTS mais recente do Ubuntu
FROM ubuntu:22.04

# Atualiza os pacotes e instala o básico (opcional)
RUN apt-get update && apt-get install -y \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

COPY ./Projeto_Final_ADA ../app

# Define o diretório de trabalho
WORKDIR /app

# Comando padrão ao iniciar o contêiner
CMD ["/bin/bash"]
