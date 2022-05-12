(:4. Mostrar sólo el título sin atributos de los libros cuyo precio sea menor o igual a 30.:)
for $titulo in bookstore/book[price<=30]/title/text()
return <titulo>{$titulo}</titulo>
