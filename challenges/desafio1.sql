DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plans(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(45) NOT NULL,
    plan_price DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(45) NOT NULL,
    user_age SMALLINT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(45) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(45) NOT NULL,
    song_duration SMALLINT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.following(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.history(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY(user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

INSERT INTO
    SpotifyClone.plans (plan_name, plan_price)
VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);

INSERT INTO
    SpotifyClone.users (user_name, user_age, plan_id)
VALUES
    ('Barbara Liskov', 82, 1),
    ('Robert Cecil Martin', 58, 1),
    ('Ada Lovelace', 37, 4),
    ('Martin Fowler', 46, 4),
    ('Sandi Metz', 58, 4),
    ('Paulo Freire', 19, 2),
    ('Bell Hooks', 26, 2),
    ('Christopher Alexander', 85, 3),
    ('Judith Butler', 45, 3),
    ('Jorge Amado', 58, 3);

INSERT INTO
    SpotifyClone.artists (artist_name)
VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

INSERT INTO
    SpotifyClone.albums (album_name, artist_id)
VALUES
    ('Renaissance', 1),
    ('Jazz', 2),
    ('Hot Space', 2),
    ('Falso Brilhante', 3),
    ('Vento de Maio', 3),
    ('QVVJFA?', 4),
    ('Somewhere Far Beyond', 5),
    ('I Put A Spell On You', 6);

INSERT INTO
    SpotifyClone.songs (song_name, song_duration, album_id)
VALUES
    ('BREAK MY SOUL', 279, 1),
    ("VIRGO\'S GROOVE", 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ("Don\'t Stop Me Now", 203, 2),
    ('Under Pressure', 152, 2),
    ('Como Nossos Pais', 105, 3),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 3),
    ('Samba em Paris', 267, 4),
    ("The Bard's Song", 244, 5),
    ('Feeling Good', 100, 6);

INSERT INTO
    SpotifyClone.following (user_id, artist_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (6, 6),
    (7, 6),
    (9, 3),
    (10, 2);

INSERT INTO
    SpotifyClone.history (user_id, song_id)
VALUES
    (1, 8),
    (1, 2),
    (1, 10),
    (2, 10),
    (2, 7),
    (3, 10),
    (3, 2),
    (4, 8),
    (5, 8),
    (5, 5),
    (6, 7),
    (6, 1),
    (7, 4),
    (8, 4),
    (9, 9),
    (10, 3);
