const { Client } = require("pg");
const { mapUsers } = require('./utils');


const configs = {
    host: "localhost",
    port: 5432,
    user: "postgres",
    password: "postgres",
    database: "students",
};

const client = new Client(configs);

const userArray = [{
    firstName: 'John',
    lastName: 'Doe',
    email: 'doooooe@gmail.com',
    isSubscribe: true
},
{
    firstName: 'VAsya',
    lastName: 'Doevich',
    email: 'vas@gmail.com',
    isSubscribe: true
},
{
    firstName: 'Niger',
    lastName: 'Doesmerh',
    email: 'nig@gmail.com',
    isSubscribe: true
}]

async function start() {
    await client.connect();

    const res = await client.query(
        `INSERT INTO users (first_name, last_name, email, is_subscribe) VALUES
        ${mapUsers(userArray)}`
    );

    console.log(res);

    await client.end();
}

start();