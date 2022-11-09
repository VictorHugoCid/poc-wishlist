import { Router } from 'express'

import { getFilms, insertFilm } from '../controllers/filmController.js'

const router = Router();

router.get('/films', getFilms)
router.post('/films', insertFilm)

export default router;