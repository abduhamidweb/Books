import mongodb from "mongodb"
const {
    MongoClient
} = mongodb;
!(async function () {
    const connect = new MongoClient('mongodb://127.0.0.1:27017');
    const client = await connect.connect('mongodb');
    const db = client.db('m1');
    const users = db.collection('m1');
    // console.log(await users.find().toArray());
    // console.log(await users.insertOne({
    //     age: 288
    // }));
})()
