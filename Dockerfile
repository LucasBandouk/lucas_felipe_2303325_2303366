# Use uma imagem base com Python 3.10
FROM python:3.10

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o conteúdo do diretório atual para o contêiner
COPY . .

# Instale as dependências necessárias
RUN pip install --no-cache-dir flask pytest

# Exponha a aplicação na porta 8080
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["python", "src/feature.py"]
