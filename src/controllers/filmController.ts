import { Request, Response } from 'express'
import { filmRepositorie } from '../repositories/filmRepositorie.js'
import { Film } from '../protocols/Film.js'
import { FilmSchema } from '../schema/filmSchema.js'
import { QueryResult } from 'pg'


async function getFilms(req: Request, res: Response){

    const userId: number = 2
    try {
        const { rows: films } = await filmRepositorie.getFilmsByUserId(userId)

        return res.status(200).send(films)
        // res.status(200).send(films)
    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}

async function insertFilm(req: Request, res: Response) {
    const newFilm = req.body as Film

    const { error } = FilmSchema.validate(newFilm)

    if (error) {
        return res.status(400).send({
            message: error.message
        })
    }

    try {
        filmRepositorie.insertFilm(newFilm)

        res.sendStatus(201)
    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}

async function updateFilm(req: Request, res: Response) {
    const { filmId, userId } = req.body
    console.log("🚀 ~ file: filmController.ts ~ line 44 ~ updateFilm ~ req.body", req.body)

    if(!filmId || !userId){
        return res.status(400).send("filmId ou userId inválidos")
    }

    try {
        await filmRepositorie.updateFilm(filmId, userId)

        res.status(200).send('atualização feita com sucesso')
    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}

async function deleteFilm(req: Request, res: Response) {

    const { filmId, userId } = req.body

    try {
        const film = await filmRepositorie.deleteFilm(filmId, userId)


        res.sendStatus(200)
    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}

async function watchersRanking(req: Request, res: Response){


    try {
        const {rows : ranking} = await filmRepositorie.watchersRanking()

        res.status(200).send(ranking)
        
    } catch (error) {
        console.error(error)
        res.sendStatus(500)        
    }
}

export {
    insertFilm,
    getFilms,
    updateFilm,
    deleteFilm,
    watchersRanking


}