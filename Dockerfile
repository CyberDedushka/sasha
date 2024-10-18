# Используем официальный образ Nginx
FROM nginx:latest

# Устанавливаем рабочую директорию
WORKDIR /usr/share/nginx/html

# Копируем файлы в контейнер
COPY index.html ./
COPY css/ ./css/
COPY PHOTOS/ ./PHOTOS/

# Открываем порт 80 для доступа
EXPOSE 80

# Nginx использует стандартный конфиг, который уже настроен для раздачи файлов
