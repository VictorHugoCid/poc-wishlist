import Joi from 'joi'

export const FilmSchema = Joi.object({
    userId:Joi.number().required(),
    title:Joi.string().required(),
    platform:Joi.string().required(),
    type:Joi.string().required(),

})