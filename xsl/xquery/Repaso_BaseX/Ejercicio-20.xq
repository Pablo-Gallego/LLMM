(:20. Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquetalos con "año".:)
for $años in distinct-values(/bookstore/book/year)
return <año>{$años}</año>
