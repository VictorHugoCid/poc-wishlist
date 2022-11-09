import { connection } from '../database/database.js'




async function getFilmsByUserId(userId, text, link) {
    const query = `INSERT INTO posts ("userId", text, link) VALUES ($1, $2, $3)`

    return connection.query(query, [userId, text, link])

}

async function insertFilm(userId, title, platform, type) {
    console.log('DADOS',userId, title, platform, type)

    const query = `INSERT INTO posts ("userId", text, link) VALUES ($1, $2, $3)`

    return connection.query(query, [userId, title, platform, type])

}

const filmRepositorie = {
    getFilmsByUserId,
    insertFilm,
}

export { filmRepositorie }