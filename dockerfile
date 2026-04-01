# Image Nginx
FROM nginx:alpine

# Supprimer config par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copier ton site
COPY . /usr/share/nginx/html

# Exposer port 80
EXPOSE 80

# Lancer nginx
CMD ["nginx", "-g", "daemon off;"]
