(:17. Mostrar los libros cuya categoría empiece por "C".:)
for $libro in /bookstore/book
where starts-with(upper-case($libro/@category), "C")
return $libro
