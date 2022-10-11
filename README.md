# sample-app-ui
Sample App UI build using Vue + Vite


## Requirement
- node 10.x

## Setup

```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Compile and Minify for Production

```sh
npm run build
```

### Run Headed Component Tests with [Cypress Component Testing](https://on.cypress.io/component)

```sh
npm run test:unit # or `npm run test:unit:ci` for headless testing
```

### Run End-to-End Tests with [Cypress](https://www.cypress.io/)

```sh
npm run build
npm run test:e2e # or `npm run test:e2e:ci` for headless testing
```

### Lint with [ESLint](https://eslint.org/)

```sh
npm run lint
```

## Docker Container
### Build container
```
docker build -f Dockerfile -t sample-app-ui:latest .
```

### Run container
```
docker run -d --rm -p 5000:5000 --env PORT=5000 --name sample-app-ui sample-app-ui:latest
```