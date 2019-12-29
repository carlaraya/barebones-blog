FROM node:12

# Make directory and cd to it
WORKDIR /usr/src/barebones-blog

# copy package and package-lock
COPY package*.json ./
RUN npm install

# for production
# RUN npm ci --only=production

COPY . .

EXPOSE 3000
CMD ["npm", "start"]

# CMD ["npm", "run", "devstart"]
