FROM node:18

# 1. Робоча папка
WORKDIR /app

# 2. Встановлення Directus
RUN npm install -g directus

# 3. Копіюємо всі файли проєкту
COPY . .

# 4. Встановлюємо залежності
RUN npm install

# 5. Відкриваємо порт
EXPOSE 8055

# 6. Запускаємо Directus
CMD ["npx", "directus", "start"]
