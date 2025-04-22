FROM php:7.4-apache

# Enable Apache mod_rewrite (commonly needed for frameworks)
RUN a2enmod rewrite

# Copy your code into the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Set permissions (optional but helpful for dev)
RUN chown -R www-data:www-data /var/www/html
