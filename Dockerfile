# Utilisez une image de base (par exemple, une image Ubuntu)
FROM python:3.11.1

# Définissez les variables d'environnement
ENV PYTHONUNBUFFERED 1

# Créez un répertoire pour l'application
RUN mkdir /code

# Définissez /code comme répertoire de travail
WORKDIR /code

# Copiez le reste de votre application dans le conteneur
COPY requirements.txt requirements.txt

# Installez les dépendances
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

# Exposez les ports nécessaires à l'application
EXPOSE 8000

# Démarrez le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


## BUILD docker build -t my_muscle_tracker:latest .
## RUN   docker run -p 8000:8000 manage


## LINKS https://www.youtube.com/watch?v=W5Ov0H7E_o4