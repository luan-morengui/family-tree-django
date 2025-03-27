# Usa uma imagem oficial do Python como base
FROM python:3.11

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . .

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta usada pelo Django (caso esteja rodando com runserver)
EXPOSE 8000

# Comando para rodar o Django (substitua conforme necessário)
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "seu_projeto.wsgi:application"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

