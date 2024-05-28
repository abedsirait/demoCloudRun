FROM node:18-alpine
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .
ENV MODEL_URL="https://storage.googleapis.com/demo-model-ml/model.json"

EXPOSE 3000
CMD [ "npm", "start" ]