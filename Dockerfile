FROM node:18-slim

# Install Python and pip, then install yt-dlp with the override flag
RUN apt-get update && apt-get install -y python3 python3-pip && \
    python3 -m pip install --upgrade --break-system-packages yt-dlp && \
    apt-get clean

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3001
CMD ["node", "server.js"]
