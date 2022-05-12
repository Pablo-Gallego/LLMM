(:2. Mostrar los libros cuyo precio sea menor o igual a 30. Primero incluyendo la condición en la cláusula "where" y luego en la ruta del XPath.
Where:)
for $x in/bookstore/book
where $x/price<=30
return $x

(:XPath
for $titulo in bookstore/book[price<=30]
return $titulo:)
