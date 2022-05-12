(:14. Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)
for $libro in /bookstore/book
return <libro>{$libro/title/text()}
<autores> {count($libro/author)}</autores></libro>
