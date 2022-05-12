(:21. Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.:)
for $autor in distinct-values(/bookstore/book/author)
order by string-length($autor)
return <autor>{$autor}</autor>
