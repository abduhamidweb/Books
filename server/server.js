import express from 'express';
import '../utils/mongo.js';
import booksRoute from "../routes/books.routes.js";


const PORT = 5000;




const app = express();




app.use(express.json());
app.use(booksRoute);



app.listen(PORT), console.log('server ishladi....');