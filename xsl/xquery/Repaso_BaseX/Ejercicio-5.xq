(:5. Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con "lib2005".:)
for $x in bookstore/book[year=2005]
return <lib2005>{/$x/title}{/$x/author}</lib2005>
