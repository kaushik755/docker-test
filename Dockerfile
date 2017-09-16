FROM node

ARG PORT=3000
ENV PORT=$PORT

ENV HOME=/app
RUN mkdir -p $HOME
WORKDIR $HOME

COPY ./package.json ./index.js ./

RUN npm install

COPY /src ./src/

EXPOSE $PORT

CMD ["npm", "run", "start"]

