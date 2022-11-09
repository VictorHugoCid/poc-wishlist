import pg from 'pg'
// import 'dotenv/config' 

// dotenv.config()
const { Pool } = pg;

const connection = new Pool({
    user: 'postgres',
    host: 'localhost',
    port: 5432,
    database: 'wishlist',
    password: '123456'
});

// const connection = new Pool({
//     connectionString: process.env.DATABASE_URL,
//     ssl: {
//         rejectUnauthorized: false
//     }
// })

console.log('database connected')

export { connection };