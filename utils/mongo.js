import mongoose from 'mongoose';
mongoose.connect('mongodb://localhost/books', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});
 
const connection = mongoose.connection;
connection.on('error', console.error.bind(console, 'MongoDBga ulanishda xato yuz berdi:'));
connection.once('open', function () {
    console.log("MongoDBga muvaffaqiyatli ulanildi");
});