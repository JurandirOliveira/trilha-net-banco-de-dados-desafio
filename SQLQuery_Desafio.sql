-- 1
SELECT  
	Nome, 
	Ano 
from Filmes

--2
SELECT  
    Nome, 
    Ano 
FROM Filmes
ORDER BY Ano

--3
SELECT  
    Nome, 
    Ano, 
	duracao
FROM Filmes
where Nome = 'De Volta para o Futuro'

--4
SELECT  
    Nome, 
    Ano, 
	duracao
FROM Filmes
where Ano = '1997'

--5
SELECT  
    Nome, 
    Ano, 
	duracao
FROM Filmes
where Ano > 2000

--6
SELECT  
    Nome, 
    Ano, 
	duracao
FROM Filmes
where duracao  > 100 and duracao < 150
order by duracao

--7
SELECT 
    Ano, 
    COUNT(Ano) AS Quantidade
FROM 
    Filmes
GROUP BY 
    Ano 
ORDER BY 
    Quantidade DESC;


--8
SELECT 
    *
FROM 
    Atores
WHERE genero = 'M'


--9
SELECT 
    *
FROM 
    Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome


--10
SELECT 
    F.Nome, 
    G.Genero 
FROM 
    Filmes F
JOIN 
    FilmesGenero FG ON F.Id = FG.IdFilme
JOIN 
    Generos G ON FG.IdGenero = G.Id


--11
SELECT 
    F.Nome, 
    G.Genero 
FROM 
    Filmes F
JOIN 
    FilmesGenero FG ON F.Id = FG.IdFilme 
JOIN 
    Generos G ON FG.IdGenero = G.Id 
WHERE 
    G.Genero = 'Mistério'


--12
SELECT 
    F.Nome, 
    G.PrimeiroNome,
	G.UltimoNome,
	FG.Papel
	
FROM 
    Filmes F
JOIN 
    ElencoFilme FG ON F.Id = FG.IdAtor
JOIN 
    Atores G ON FG.IdAtor = G.Id