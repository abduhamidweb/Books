import books from "../schemas/books.schema.js";


class booksClass {
    async get(id) {
        if (id) return await books.findById(id);
        else return await books.find();
    }
    async post(data) {
        return await books.create(data);
    }
    async put(id, data) {
        return await books.updateOne({
            _id: id
        }, data);
    }
    async delete(id) {
        return await books.deleteOne({
            _id: id
        });
    }
}
export default new booksClass();