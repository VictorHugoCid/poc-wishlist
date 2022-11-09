import { Request, Response } from 'express'
import { filmRepositorie } from '../repositories/filmRepositorie.js'


function getFilms(req: Request, res: Response) {

    try {
        const films = filmRepositorie.getFilmsByUserId

        res.status(200).send(films)
    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}

function insertFilm(req: Request, res: Response) {

    // const { userId, title, platform, type } = req.body
    console.log('DADOS',req.body)
    const film = req.body
    // console.log('DADOS',userId, title, platform, type)
    
    try {
        // filmRepositorie.insertFilm(userId, title, platform, type)

        res.status(200).json({
            message:'ta passando no insertFilm',
            film: film
        })
    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }

}

function updateFilm(req: Request, res: Response) {

    try {

    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}


function deleteFilm(req: Request, res: Response) {


    try {

    } catch (error) {
        console.error(error)
        res.sendStatus(500)
    }
}

export {
    insertFilm,
    getFilms


}