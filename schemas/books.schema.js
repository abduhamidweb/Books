import {
    ObjectId
} from 'mongodb';
import {
    Schema,
    Types,
    model
} from 'mongoose';

const booksSchema = new Schema({
    bookname: {
        type: String,
        require: true
    }
});
export default model('books', booksSchema);