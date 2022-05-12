(:3. Mostrar sólo el título de los libros cuyo precio sea menor o igual a 30.:)
for $titulo in bookstore/book[price<=30]/title
return <titulo>{$titulo}</titulo>
