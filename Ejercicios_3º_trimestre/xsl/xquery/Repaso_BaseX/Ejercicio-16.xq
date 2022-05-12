(:16. Mostrar los libros escritos en años que terminen en "3".:)
for $libro in /bookstore/book
where ends-with($libro/year, "3")
return $libro
