# Используем официальный образ Node.js
FROM node:latest

# Установка рабочей директории внутри контейнера
WORKDIR /app

# Копирование package.json и package-lock.json для установки зависимостей
COPY package*.json ./

# Установка зависимостей
RUN npm install

# Копирование файлов проекта
COPY . .

# Установка команды для запуска приложения
CMD ["npm", "run", "dev"]
