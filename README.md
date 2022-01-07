<html>

<head>
    <title>Mi primera pagina web </title>
</head>
<style>
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        width: 100%;
        padding-inline-start: 0px;

    }

    li {
        text-align: center;
        border: 1px solid #555;
    }

    li a {
        display: block;
        color: #000;
        padding: 8px 10px;
        text-decoration: none;
    }

    li a.active {
        background-color: #04AA6D;
        color: white;
    }

    li a:hover:not(.active) {
        background-color: #555;
        color: white;
    }

    #pie_pagina {
        text-align: center;
    }

    .bloque_pie {
        float: left;
        width: 50%;
        background-color: rgb(0, 110, 255);
    }

    .bloque_pie h3 {
        padding: 5px 0px;
    }

    .bloque_pie p {
        padding: 5px 0px
    }
</style>
</head>

<body>
    <ul>
        <li><a href="https://feedly.com/i/subscription/feed%2Fhttps%3A%2F%2Fpabloning.github.io%2FLLMM%2Frss%2CLLMM.xml" target="_blank">Feedly</a></li>
        <li><a href="https://www.inoreader.com/feed/https%3A%2F%2Fpabloning.github.io%2FLLMM%2Frss%2CLLMM.xml" target="_blank">Inoreader</a></li>
        <li><a href="https://pabloning.github.io/LLMM/" class="rss" target="_blank">Github</a></li>
        <li><a class="active" href="index.html" target="_blank">Inicio</a></li>
        <li><a href="Ejercicios_1º_trimestre/tablas/horario.html" target="_blank">Horario</a></li>
        <li><a href="Ejercicios_1º_trimestre/formularios/tour 2.html" target="_blank">Tour</a></li>
        <li><a href="Ejercicios_1º_trimestre/listas/RecetaTortilla.html" target="_blank">Receta Tortilla</a></li>
        <li><a href="Ejercicios_1º_trimestre/plantilla/plantilla.html" target="_blank">Plantilla</a></li>
        <div class="vacio"></div>
    </ul>
    </div>
    <h1 text-align="center">Hola chicos</h1>
    <hr>
    <!--esto es un salto de línea-->
    <p align="center"><img width=10%; src="img_ind/capibara2.jpg"> <img src="img_ind/imagen.jpg"><img width=10%;
            src="img_ind/capibara.jpg"></p>
    <p align="center"><a href="https://youtu.be/VSkHigX9x1o" target="_blank">Somos españoles y nos gustan los
            capibaras</a></p>
    <div id="pie_pagina">
        <div class="bloque_pie">
            <h3>Sobre este sitio</h3>
            <p>Propiedad de : Pablo</p>
            <p>Pablo Gallego</p>
        </div>
        <div class="bloque_pie">
            <h3>Contactame</h3>
            <p><a href="rss,LLMM.xml" target="_blank"><img width=8.5%; src="img_ind/rss.jpg"></a>
                <a href="rss,LLMM.xml" target="_blank"><input type="button" value="rss"></a>
            </p>

        </div>
        <div class="vacio"></div>
    </div>
</body>

</html>
