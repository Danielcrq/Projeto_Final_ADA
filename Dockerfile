# Usa uma imagem base oficial
FROM ubuntu:22.04
SHELL ["/bin/bash", "-c"]
RUN useradd -ms /bin/bash user01 -G sudo && 
  passwd -d user01 && 
  makdir -p /home/user01/app
# Define o diretório de trabalho dentro do contêiner
WORKDIR home/user01/app
RUN apt update &&
  apt install curl -y
  
  
# Copia os arquivos de dependências e instala


# Copia o restante dos arquivos do projeto


USER user01

ENTRYPOINT tail -f /dev/null
