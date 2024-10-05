# Utilizamos una imagen base de Python
FROM python:3.9-slim-buster

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los requerimientos y los instalamos
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto del código
COPY . .

# Exponemos el puerto por el que escucha nuestra aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]