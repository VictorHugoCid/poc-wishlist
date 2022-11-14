import { Router } from 'express'

import { getFilms, insertFilm, updateFilm, deleteFilm, watchersRanking } from '../controllers/filmController.js'

const router = Router();

router.get('/films', getFilms)
router.post('/films', insertFilm)
router.put('/films', updateFilm)
router.delete('/films', deleteFilm)

router.get('/ranking', watchersRanking)


export default router;