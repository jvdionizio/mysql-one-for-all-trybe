SELECT musicas.musica AS nome, COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.musicas AS musicas
ON musicas.musica_id = historico.musica_id
INNER JOIN SpotifyClone.usuarios AS usuarios
ON usuarios.usuario_id = historico.usuario_id
WHERE usuarios.plano_id IN (1,4)
GROUP BY musicas.musica
ORDER BY musicas.musica;
