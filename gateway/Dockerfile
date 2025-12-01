FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production

FROM node:18-alpine
WORKDIR /app
USER node
COPY --from=builder /app/node_modules ./node_modules
COPY . .
EXPOSE 5921
CMD ["npm", "start"]
