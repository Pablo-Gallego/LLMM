(:19. Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.:)
for $libro in /bookstore/book
return <libro>{$libro/title/text()}<caracteres>{string-length($libro/title)}</caracteres></libro>