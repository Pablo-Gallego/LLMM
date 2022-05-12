(:7. Mostrar los libros ordenados primero por "category" y luego por "title" en una sola consulta.:)
for $x in/bookstore/book
order by $x/@category, $x/title
return $x
