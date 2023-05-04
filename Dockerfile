
# Définition de l'image de base
FROM php:8.0-apache
# Copie de votre application dans le conteneur
COPY . /var/www/html/
# Exposition du port 80 pour accéder à Apache depuis l'extérieur
EXPOSE 80

