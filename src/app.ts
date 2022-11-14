import express from 'express'

import filmRouter from './router/filmRouter.js'

const app = express();
app.use(express.json())

app.use(filmRouter)

app.listen(4000, () => console.log('ta executando...'))