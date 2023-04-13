import {
    Router
} from "express";

import books from "../controllers/books.contr.js";

const booksRoute = Router();

booksRoute.get('/books', books.find);
booksRoute.get('/books/:id', books.find);
booksRoute.post('/books', books.creat);
booksRoute.put('/books/:id', books.update);
booksRoute.delete('/books/:id', books.delete);

export default booksRoute;