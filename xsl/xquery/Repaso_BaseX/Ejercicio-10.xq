(:10. Mostrar el precio mínimo y máximo de los libros.:)
let $x := /bookstore/book
let $min := min($x/price)
let $max := max($x/price)
return <etiquetas><minimo>{$min}</minimo>
<maximo>{$max}</maximo></etiquetas>
