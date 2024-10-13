FROM php:8.2-apache

# Mise à jour des paquets système, installation et activation des extensions PHP
RUN apt-get update && apt-get upgrade -y && docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo_mysql  && apt-get clean && rm -rf /var/lib/apt/lists

# Ajouter ServerName pour éviter les messages d'avertissement Apache
RUN echo "ServerName localhost" >> /etc/apache2/conf-available/servername.conf \
    && a2enconf servername

# Expose le port 80 pour Apache
EXPOSE 80
