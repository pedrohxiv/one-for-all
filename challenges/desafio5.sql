SELECT so.song_name AS `cancao`, COUNT(*) AS `reproducoes` FROM SpotifyClone.songs AS so JOIN SpotifyClone.history AS hi ON hi.song_id = so.song_id GROUP BY `cancao` ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2;