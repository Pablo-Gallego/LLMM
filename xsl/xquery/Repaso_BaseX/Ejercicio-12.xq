(:12. Mostrar la suma total de los precios de los libros con la etiqueta "total".:)
let $x := /bookstore/book
return <total>sum($x/price)</total>
