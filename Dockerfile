# Use uma imagem base do Python
FROM python:3.9

# Copiar o requirements.txt para o contêiner
COPY ./requirements.txt /app/requirements.txt

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos para o diretório de trabalho
COPY . /app

# Instale as dependências
RUN pip install -r requirements.txt

# Defina o comando de inicialização (substitua pelo comando real de inicialização da sua API)
CMD ["python", "app.py"]
