(:6. Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion".:)
(:FOR
for $x in bookstore/book/year/text()
return <publicacion>{/$x}</publicacion>:)
(:LET:)
let $x := bookstore/book/year/text()
return <publicacion>{/$x}</publicacion>
