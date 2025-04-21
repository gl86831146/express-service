FROM node:20
WORKDIR /app
COPY . .
RUN npm config set registry https://registry.npmmirror.com
RUN npm install
EXPOSE 3001
CMD ["npm", "start"]