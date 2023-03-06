const { getUsers } = require('./api/fetch');
const { User, client } = require('./model');




async function start() {
    await client.connect();

    const userArray = await getUsers();

    const res = await User.bulkCreate(userArray);

    console.log(res);

    await client.end();
}

start();
