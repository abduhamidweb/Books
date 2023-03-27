DROP table IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories(
    cat_id serial PRIMARY key,
    cat_name varchar(255) not null default null
);
INSERT INTO categories(cat_name) VALUES 
('test 1'),
('test 2'),
('test 3');

DROP table IF EXISTS category;
CREATE TABLE IF NOT EXISTS category(
    category_id serial PRIMARY key,
    category_name varchar(255) not null default null,
    cat_id int not null
);
INSERT INTO category(category_name, cat_id) VALUES 
('unit 1', 1),
('unit 2',  2),
('unit 3',  3),
('unit 4',  1),
('unit 5',  2),
('unit 6',  3),
('unit 7',  1),
('unit 8', 2);


DROP table IF EXISTS words;
CREATE TABLE IF NOT EXISTS words(
    words_id serial PRIMARY key,
    words_english varchar(255) not null default null,
    words_translate varchar(255) not null default null,
    words_text text,
    category_id int not null
);
INSERT INTO words(words_english, words_translate,words_text, category_id )  VALUES 
('oversiz 1', 'dary ortida', 'bu daryo ortidagi joy',1 ),
('oversiz 2', 'dary ortida', 'bu daryo ortidagi joy',2 ),
('oversiz 3', 'dary ortida', 'bu daryo ortidagi joy',3 ),
('oversiz 4', 'dary ortida', 'bu daryo ortidagi joy',4 ),
('oversiz 5', 'dary ortida', 'bu daryo ortidagi joy',5 ),
('oversiz 6', 'dary ortida', 'bu daryo ortidagi joy',6 ),
('oversiz 7', 'dary ortida', 'bu daryo ortidagi joy',7 ),
('oversiz 8', 'dary ortida', 'bu daryo ortidagi joy',8 ),
('oversiz 1', 'dary ortida', 'bu daryo ortidagi joy',1 ),
('oversiz 2', 'dary ortida', 'bu daryo ortidagi joy',2 ),
('oversiz 3', 'dary ortida', 'bu daryo ortidagi joy',3 ),
('oversiz 4', 'dary ortida', 'bu daryo ortidagi joy',4 ),
('oversiz 5', 'dary ortida', 'bu daryo ortidagi joy',5 ),
('oversiz 6', 'dary ortida', 'bu daryo ortidagi joy',6 ),
('oversiz 7', 'dary ortida', 'bu daryo ortidagi joy',7 ),
('oversiz 8', 'dary ortida', 'bu daryo ortidagi joy',8 );