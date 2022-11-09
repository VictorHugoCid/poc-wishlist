import express from 'express'

import filmRouter from './router/filmRouter.js'

const server = express();

server.get('/health', (req, res) => {
    res.send('ok')
})

// server.get('/films', /* convertCLTtoPJ */)
// server.get('/jobs', /* listAllJobs */)
server.use(filmRouter)

server.listen(4000, () => console.log('ta executando...'))