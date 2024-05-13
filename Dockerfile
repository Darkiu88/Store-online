# Usa una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt e instala las dependencias
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copia el resto de los archivos del proyecto al directorio de trabajo
COPY . .

# Expone el puerto 8000
EXPOSE 8001

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
