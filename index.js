const { getUsers } = require('./api/fetch');
const { User, client, Phone, Order } = require('./model');
const { generatePhones } = require('./utils');



async function start() {
    await client.connect();

    // const userArray = await getUsers();

    // const res = await User.bulkCreate(userArray);

    // console.log(res);
    const { rows: users } = await User.findAll();
    const phones = await Phone.bulkCreate(generatePhones(100));
    const orders = await Order.bulkCreate(users, phones);

   

    await client.end();
}

start();
