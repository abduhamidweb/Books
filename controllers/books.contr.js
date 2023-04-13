import books from '../models/books.model.js';
import {
    JWT
} from '../utils/jwt.js';

class booksContr {
    async find(req, res, next) {
        const {
            id
        } = req.params;
        
        res.send(await books.get(id));
    }
    async creat(req, res, next) {
        let {
            _id,
            booksname
        } = await books.post(req.body);
        res.send({
            message: "books created succesfully " + booksname.toLocaleUpperCase(),
            token: JWT.SIGN({
                id: _id.toString()
            })
        })
    }
    async update(req, res, next) {
        const {
            id
        } = req.params;
        res.send(await books.put(id, req.body));
    }
    async delete(req, res, next) {
        const {
            id
        } = req.params;
        res.send(await books.delete(id));
    }
}

export default new booksContr();