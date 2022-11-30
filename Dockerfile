FROM node:19-alpine as deploy-deps
WORKDIR /app

COPY package*.json ./
COPY frontend/package*.json ./frontend/
RUN npm install -g npm@8.1.2 \
    && npm clean-install \
    && rm -rf ~/.npm ~/.cache

FROM deploy-deps AS build
COPY frontend/ ./frontend/
COPY .eslintrc.json ./
RUN cd frontend \
    && npm install \
    && npx gulp build-production \
    && rm -rf ~/.npm ~/.cache

FROM deploy-deps AS deploy
COPY .eslintrc.json ./
COPY --from=build /app/frontend/ ./frontend/

ENTRYPOINT cd frontend/public && npx serve -p 5000
