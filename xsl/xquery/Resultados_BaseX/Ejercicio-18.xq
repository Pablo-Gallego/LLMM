(:18. Mostrar los libros que tengan una "X" mayúscula o minúscula en el título ordenados de manera descendente.:)
for $libro in /bookstore/book
where contains($libro/title, "X")
order by $libro/title descending
return $libro
