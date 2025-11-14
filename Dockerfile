FROM node:20

WORKDIR /app

RUN npm install -g directus

COPY . .

RUN npm install

# 🔧 Створюємо директорії в /data
RUN mkdir -p /data/uploads /data/extensions

# 🔗 Символічні лінки
RUN ln -s /data/uploads /app/uploads && ln -s /data/extensions /app/extensions

EXPOSE 8055

CMD ["npx", "directus", "start"]
