# Utilisez une image de base avec PHP et Apache préinstallés
FROM ubuntu 

#Installation apache 
RUN apt-get -y update && apt-get -y install Apache 


# Copiez les fichiers HTML dans le répertoire de travail de l'application
COPY . /var/www/html/

# Exposez le port 80 pour permettre l'accès à l'application via le navigateur
EXPOSE 80

# Démarrez le serveur Apache lorsque le conteneur est lancé
CMD ["apache2-foreground"]
