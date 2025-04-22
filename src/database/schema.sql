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
ALTER TABLE users ADD COLUMN photo TEXT;

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) NOT NULL,
    description VARCHAR(200)
);

INSERT INTO posts (user_id, description) VALUES
(1, 'Top D+'),
(2, 'Já to véio 👴'),
(3, '👓🎸🧑‍🦲'),
(1, 'Eu amo BACK-END!!!');

SELECT * FROM posts;

INSERT INTO users (name, email) VALUES 
('Luciana Dias', 'ludias@email.com'),
('Luiza Maria', 'luma@email.com'),
('Isabella Borin', 'isaborin@email.com'),
('Ana Carolina', 'acarol@email.com'),
('Laura Yasmin', 'layas@email.com'),
('Mariana Souza', 'msouza@email.com'),
('Fernanda Lima', 'flima@email.com'),
('Patrícia Rocha', 'procha@email.com'),
('Juliana Alves', 'jalves@email.com'),
('Camila Mendes', 'cmendes@email.com'),
('Bruna Ferreira', 'bferreira@email.com'),
('Larissa Martins', 'lmartins@email.com'),
('Letícia Gomes', 'lgomes@email.com'),
('Tatiane Silva', 'tsilva@email.com'),
('Beatriz Costa', 'bcosta@email.com'),
('Renata Ramos', 'rramos@email.com'),
('Gabriela Teixeira', 'gteixeira@email.com'),
('Bianca Oliveira', 'boliveira@email.com'),
('Amanda Pires', 'apires@email.com'),
('Natália Dias', 'ndias@email.com'),
('Cláudia Azevedo', 'cazevedo@email.com'),
('Juliane Tavares', 'jtavares@email.com'),
('Daniela Moura', 'dmoura@email.com'),
('Elaine Castro', 'ecastro@email.com'),
('Samantha Lopes', 'slopes@email.com'),
('Débora Neves', 'dneves@email.com'),
('Tatiana Braga', 'tbraga@email.com'),
('Cristina Nogueira', 'cnogueira@email.com'),
('Paula Reis', 'preis@email.com'),
('Vanessa Barreto', 'vbarreto@email.com'),
('Helena Duarte', 'hduarte@email.com'),
('Lívia Ribeiro', 'lribeiro@email.com'),
('Jéssica Farias', 'jfarias@email.com'),
('Viviane Prado', 'vprado@email.com'),
('Carol Soares', 'csoares@email.com'),
('Milena Cardoso', 'mcardoso@email.com'),
('Rafaela Pinto', 'rpinto@email.com'),
('Lorena Cunha', 'lcunha@email.com'),
('Nicole Barros', 'nbarros@email.com'),
('Aline Machado', 'amachado@email.com'),
('Priscila Fontes', 'pfontes@email.com'),
('Andreia Xavier', 'axavier@email.com'),
('Tatiane Guedes', 'tguedes@email.com'),
('Flávia Matos', 'fmatos@email.com'),
('Isabela Rocha', 'irocha@email.com'),
('Marcela Andrade', 'mandrade@email.com'),
('Marina Duarte', 'mduarte@email.com'),
('Karla Brito', 'kbrito@email.com'),
('Lilian Paiva', 'lpaiva@email.com'),
('Janaína Freitas', 'jfreitas@email.com'),
('Cinthia Monteiro', 'cmonteiro@email.com'),
('Elaine Bezerra', 'ebezerra@email.com'),
('Tatiane Lima', 'tlima@email.com'),
('Catarina Ribeiro', 'cribeiro@email.com'),
('Sueli Antunes', 'santunes@email.com'),
('Talita Mendes', 'tmendes@email.com'),
('Adriana Almeida', 'aalmeida@email.com'),
('Cristiane Silva', 'csilva@email.com'),
('Silvana Barbosa', 'sbarbosa@email.com'),
('Angela Ramos', 'aramos@email.com'),
('Tânia Melo', 'tmelo@email.com'),
('Patrícia Lemos', 'plemos@email.com'),
('Rosana Oliveira', 'roliveira@email.com'),
('Regina Torres', 'rtorres@email.com'),
('Cláudia Nascimento', 'cnascimento@email.com'),
('Jaqueline Souza', 'jsouza@email.com'),
('Lucilene Rocha', 'lrocha@email.com'),
('Franciele Dantas', 'fdantas@email.com'),
('Michele Vieira', 'mvieira@email.com'),
('Tainá Santos', 'tsantos@email.com'),
('Josiane Rocha', 'jrocha@email.com'),
('Valéria Mendes', 'vmendes@email.com'),
('Daniela Rocha', 'drocha@email.com'),
('Mônica Fernandes', 'mfernandes@email.com'),
('Rita Lopes', 'rlopes@email.com'),
('Tatiane Cardoso', 'tcardoso@email.com'),
('Márcia Nunes', 'mnunes@email.com'),
('Leila Ramos', 'lramos@email.com'),
('Tânia Soares', 'tsoares@email.com'),
('Andréia Martins', 'amartins@email.com'),
('Juliana Costa', 'jcosta@email.com'),
('Silvana Pereira', 'spereira@email.com'),
('Beatriz Fernandes', 'bfernandes@email.com'),
('Cláudia Pires', 'cpires@email.com');

SELECT * FROM users;