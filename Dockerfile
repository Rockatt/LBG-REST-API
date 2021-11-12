FROM node:latest
COPY . .
ENV PORT=9000
EXPOSE 9000
RUN npm install
ENTRYPOINT ["npm","start"]
