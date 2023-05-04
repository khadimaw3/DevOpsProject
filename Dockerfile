
# Définition de l'image de base
FROM ubuntu:latest

# Installation d'Apache et PHP
RUN apt-get update && apt-get install -y apache2 php

# Copie de votre application dans le conteneur
COPY . /var/www/html/

# Exposition du port 80 pour accéder à Apache depuis l'extérieur
EXPOSE 80

# Commande pour démarrer Apache lorsqu'un conteneur basé sur cette image est lancé
CMD ["apache2ctl", "-D", "FOREGROUND"]

