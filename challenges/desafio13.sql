SELECT CASE WHEN user_age <= 30 THEN 'Até 30 anos' WHEN user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos' ELSE 'Maior de 60 anos' END AS faixa_etaria, COUNT(DISTINCT us.user_id) AS total_pessoas_usuarias, COUNT(fa.song_id) AS total_favoritadas FROM SpotifyClone.users AS us LEFT JOIN SpotifyClone.favorites AS fa ON us.user_id = fa.user_id GROUP BY faixa_etaria ORDER BY CASE WHEN faixa_etaria = 'Até 30 anos' THEN 1 WHEN faixa_etaria = 'Entre 31 e 60 anos' THEN 2 ELSE 3 END;