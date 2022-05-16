(:9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.:)
(:let $x := /bookstore/book
return <libro>
          {$x/title}
          <total>{count($x)}</total>
       </libro>>:)


let $total := count (/bookstore/book),
    $titulos := (
      for $libro in /bookstore/book/title 
      return <titulo>{$libro/text()}</titulo>) 
return 
      <resultado>
        {$titulos}
        <total_libros>{$total}</total_libros>
      </resultado>