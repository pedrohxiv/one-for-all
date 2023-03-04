SELECT COUNT(hi.user_id) AS `musicas_no_historico` FROM SpotifyClone.history AS hi INNER JOIN SpotifyClone.users AS us ON us.user_id = hi.user_id WHERE us.user_name = 'Barbara Liskov';
