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
    (1, 4),
    (1, 8),
    (2, 2),
    (3, 1),
    (3, 10),
    (4, 5),
    (4, 2),
    (5, 8),
    (5, 9),
    (8, 2),
    (9, 5),
    (10, 10);