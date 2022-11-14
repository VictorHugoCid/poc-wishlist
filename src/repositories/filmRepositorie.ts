import { connection } from '../database/database.js'
import { QueryResult } from 'pg'
import { Film, FilmEntity } from '../protocols/Film.js'


async function getFilmsByUserId(userId: number): Promise<QueryResult<FilmEntity>> {
    const query = `SELECT * FROM films WHERE "userId" = $1`

    return connection.query(query, [userId])

}

async function insertFilm(film: Film): Promise<QueryResult<FilmEntity>> {

    const query = `INSERT INTO films ("userId", title, platform, type) VALUES ($1, $2, $3, $4)`

    return connection.query(query, [film.userId, film.title, film.platform, film.type])
}

async function updateFilm(filmId: number, userId: number): Promise<QueryResult> {

    const query = `UPDATE films SET "status"=true WHERE id = $1 AND "userId" = $2`

    return connection.query(query, [filmId, userId])
}

async function deleteFilm(filmId: number, userId: number): Promise<QueryResult> {

    const query = `DELETE FROM films WHERE id = $1 AND "userId" = $2`

    return connection.query(query, [filmId, userId])
}

async function watchersRanking():Promise<QueryResult>{
    const query = `
    select 
        users.name,
        COUNT(users.name) as "count"
    from films 
    join users on films."userId" = users.id
    WHERE status = true
    GROUP BY users.name
    ORDER BY count DESC 
    `
    return connection.query(query, [ ])

}

const filmRepositorie = {
    getFilmsByUserId,
    insertFilm,
    updateFilm,
    deleteFilm,
    watchersRanking
}

export { filmRepositorie }