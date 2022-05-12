(:1. Mostrar los títulos de los libros con la etiqueta "titulo".:)
for $titulo in bookstore/book/title/text()
return <titulo>{$titulo}</titulo>
