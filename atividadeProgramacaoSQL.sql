--1.Fazer em SQL Server os seguintes algoritmos:
  
 ---a) Fazer um algoritmo que leia 1 número e mostre se são múltiplos de 2,3,5 ou nenhum deles
DECLARE @num INT
SET @num = RAND()*10000+1
print @num
IF @num % 2 = 0
BEGIN
	print('É múltiplo de 2')
END

IF(@num % 3 = 0)
BEGIN
	print('É múltiplo de 3')
END

IF(@num % 5 = 0)
BEGIN
	print('É múltiplo de 5')
END

IF(@num % 2 != 0 AND @num % 3 != 0 AND @num % 5 != 0)
BEGIN
	print('Não é múltiplo de 2,3 e 5')
END

 ---b)  Fazer um algoritmo que leia 3 números e mostre o maior e o menor
DECLARE @a INT, @b INT, @c INT, @maior INT, @menor INT
SET @a = RAND()*100
SET @b = RAND()*100
SET @c = RAND()*100

SET @maior = @c 
SET @menor = @c

PRINT('A = ' + CAST(@a AS CHAR(3)) + ' | B = '+CAST(@b AS CHAR(3)) + ' | C = '+ CAST(@c AS CHAR(3)))
--==================Buscando Maior=============--
IF @a > @maior
BEGIN
	SET @maior = @a
END

IF @b > @maior
BEGIN
	SET @maior = @b
END
--==================Buscando Menor=============--
IF @a < @menor
BEGIN
	SET @menor = @a
END

IF @b < @menor
BEGIN
	SET @menor = @b
END
--=================Exibindo Valores==================--
print('Menor = '+CAST(@menor AS CHAR(3)) + ' | Maior = '+ CAST(@maior AS CHAR(3)))

---c) Fazer um algoritmo que calcule os 15 primeiros termos da série
--1,1,2,3,5,8,13,21,...
--E calcule a soma dos 15 termos
DECLARE @a INT, @b INT, @soma INT, @cont INT,@aux INT
DECLARE @saida VARCHAR(100)
SET @a = 1
SET @b = 1
SET @soma = @a + @b
SET @cont = 2
SET @saida = CAST(@a AS VARCHAR(2)) + ',' + CAST(@b AS VARCHAR(2))
WHILE(@cont < 15)
BEGIN
	SET @aux = @a + @b
	SET @a = @b
	SET @b = @aux
	SET @soma = @soma + @aux
	SET @cont = @cont + 1;
	SET @saida = @saida + ',' + CAST(@aux AS VARCHAR(5))
END
print @saida
print 'Soma = ' + CAST(@soma AS VARCHAR(5))
--d) Fazer um algoritmo que separa uma frase, colocando todas as letras em maiúsculo e em minúsculo (Usar funções UPPER e LOWER)
DECLARE @frase VARCHAR(100), @saida VARCHAR(100)
DECLARE @cont INT,@tamanhoDaFrase  INT
SET @frase = 'uMa frAsE cOm algumas palavras'
SET @cont = 0
SET @tamanhoDaFrase = LEN(@frase)
SET @saida = ''
SET @saida = @saida + UPPER(SUBSTRING(@frase,@cont,1))
WHILE (@cont < (@tamanhoDaFrase+1) )
BEGIN
	IF(NOT SUBSTRING(@frase,@cont,1) = ' ')
	BEGIN
		IF(SUBSTRING(@frase,(@cont-1),1) = ' ')
		BEGIN
			SET @saida = @saida + UPPER(SUBSTRING(@frase,@cont,1))
		END
		ELSE
		BEGIN
			SET @saida = @saida + LOWER(SUBSTRING(@frase,@cont,1))
		END
	END
	SET @cont = @cont + 1
END
print(@saida)
--e) Fazer um algoritmo que inverta uma palavra (Usar a função SUBSTRING)
DECLARE @palavra VARCHAR(50), @saida VARCHAR(50)
DECLARE @cont INT
SET @palavra = 'palavra'
SET @cont = LEN(@palavra)
SET @saida = ''
WHILE (@cont > 0 )
BEGIN
	SET @saida = @saida + SUBSTRING(@palavra,@cont,1)
	SET @cont = @cont - 1
END
print(@saida)
