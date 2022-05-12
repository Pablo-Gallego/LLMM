(:11. Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA.:)
for $x in /bookstore/book
order by ($x/price+($x/price*0.21))
return <etiquetas>
<titulo>{$x/title/text()}</titulo>
<precio>{$x/price/text()}</precio>
<iva>{($x/price+($x/price*0.21))}</iva>
</etiquetas>
