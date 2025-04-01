CREATE DATABASE cadastro;

\c cadastro
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Thiago Ferreira', 'thiago@email.com'),
    ('Marcelo Carboni', 'marcelo@email.com'),
    ('Eduardo Correia', 'eduardo@email.com'),
    ('Felipe Dev', 'felipedev@email.com');

SELECT * FROM users;

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    description VARCHAR(200)
);

INSERT INTO posts (user_id description) VALUES
(1, 'Top D+'),
(2, 'Já to véio 👴'),
(1, '👓🎸🧑‍🦲'),
(1, 'Eu amo BACK-END!!!'),

SELECT * FROM pots;