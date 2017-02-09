-- User Table
CREATE TABLE IF NOT EXISTS tbl_user (
    user_id serial primary key,
    user_name TEXT NOT NULL,
    user_email TEXT NULL,
    user_date DATE NOT NULL DEFAULT CURRENT_DATE,
    user_gcm TEXT NULL
);

-- Category Table
CREATE TABLE IF NOT EXISTS tbl_category (
    category_id serial primary key,
    category_title TEXT NOT NULL,
    category_description TEXT NULL,
    category_date DATE NOT NULL DEFAULT CURRENT_DATE,
    category_parent INTEGER NULL
);

-- Primary Categories
insert into tbl_category(category_title) values('Advocacia');
insert into tbl_category(category_title) values('Ar Condicionado');
insert into tbl_category(category_title) values('Arquitetos');
insert into tbl_category(category_title) values('Assistência Técnica');
insert into tbl_category(category_title) values('Babás');
insert into tbl_category(category_title) values('Borracharias');
insert into tbl_category(category_title) values('Cabeleireiros');
insert into tbl_category(category_title) values('Caseiros');
insert into tbl_category(category_title) values('Coaching');
insert into tbl_category(category_title) values('Costureiras');
insert into tbl_category(category_title) values('Cozinheiros');
insert into tbl_category(category_title) values('Dentistas');
insert into tbl_category(category_title) values('Desentupidoras');
insert into tbl_category(category_title) values('Detetizadoras');
insert into tbl_category(category_title) values('Diaristas');
insert into tbl_category(category_title) values('Eletricistas');
insert into tbl_category(category_title) values('Encanadores');
insert into tbl_category(category_title) values('Enfermeiros');
insert into tbl_category(category_title) values('Etiquetas');
insert into tbl_category(category_title) values('Fotografia');
insert into tbl_category(category_title) values('Fretamento');
insert into tbl_category(category_title) values('Gesseiros');
insert into tbl_category(category_title) values('Gráficas');
insert into tbl_category(category_title) values('Guinchos');
insert into tbl_category(category_title) values('Higiene');
insert into tbl_category(category_title) values('Informática');
insert into tbl_category(category_title) values('Telefonia');
insert into tbl_category(category_title) values('Jardineiros');
insert into tbl_category(category_title) values('Lavanderias');
insert into tbl_category(category_title) values('Limpeza');
insert into tbl_category(category_title) values('Marcenaria');
insert into tbl_category(category_title) values('Mecânicos');
insert into tbl_category(category_title) values('Moto Boy');
insert into tbl_category(category_title) values('Pedreiros');
insert into tbl_category(category_title) values('Pintores');
insert into tbl_category(category_title) values('Piscinas');
insert into tbl_category(category_title) values('Podólogos');
insert into tbl_category(category_title) values('Porteiros');
insert into tbl_category(category_title) values('Psicólogos');
insert into tbl_category(category_title) values('Tatuagens');
insert into tbl_category(category_title) values('Táxi');
insert into tbl_category(category_title) values('Ventilação');
insert into tbl_category(category_title) values('Veterinários');
insert into tbl_category(category_title) values('Vidraceiros');

-- Help Table
CREATE TABLE IF NOT EXISTS tbl_help (
    help_id serial primary key,
    help_title TEXT NOT NULL,
    help_description TEXT NOT NULL,
    user_id integer REFERENCES tbl_user (user_id),
    category_id integer REFERENCES tbl_category (category_id),
    help_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Skill Table
CREATE TABLE IF NOT EXISTS tbl_skill (
    skill_id serial primary key,
    skill_description TEXT NOT NULL,
    skill_level integer NOT NULL DEFAULT 1,
    user_id integer REFERENCES tbl_user (user_id),
    category_id integer REFERENCES tbl_category (category_id),
    skill_datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);