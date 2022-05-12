(:9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.:)
let $x := /bookstore/book
return <libro>{($x)}</libro>|<total>{count($x/title)}</total>
