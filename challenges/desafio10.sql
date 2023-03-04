CREATE TABLE SpotifyClone.favorites(
    favorite_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY(favorite_id, user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

INSERT INTO
    SpotifyClone.favorites (user_id, song_id)
VALUES
    (1, 10),
    (1, 6),
    (1, 3),
    (2, 4),
    (3, 1),
    (3, 3),
    (4, 7),
    (4, 4),
    (5, 10),
    (5, 2),
    (8, 4),
    (9, 7),
    (10, 3);