export type FilmEntity = {
    id?: number,
    userId: number,
    title: string,
    platform: string,
    type: string,
    status: boolean
}

export type Film = Omit<FilmEntity, "id">

export type newFilm = Partial<FilmEntity>

