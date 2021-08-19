# The Epidemiologist R Handbook 

# About this handbook
**The Epi R Handbook is a R reference manual for applied epidemiology and public health.**  

***Go to www.epiRhandbook.com to see the latest version of the online handbook.***

<img src="https://github.com/appliedepi/epiRhandbook_eng/blob/master/images/epiRhandbook_HexSticker_500x500.png" width="200" height="200">


## R para epidemiología aplicada y salud pública {-}  

**Este manual pretende:**  
* Servir como breve guía de referencia para escribir código en R
* Proporcionar ejemplos detallados que aborden problemas epidemiológicos.
* Ayudar a profesionales de la epidemiología en su transición a R
* Ser accesible en entornos con baja conectividad a Internet a través de una **[versión sin conexión][Download handbook and data]**
 

<!-- * Use practical epi examples - cleaning case linelists, making transmission chains and epidemic curves, automated reports and dashboards, modeling incidence and making projections, demographic pyramids and rate standardization, record matching, outbreak detection, survey analysis, survival analysis, GIS basics, contact tracing, phylogenetic trees...   -->



<!-- **How is this different than other R books?**   -->

<!-- * It is community-driven - *written for epidemiologists by epidemiologists* in their spare time and leveraging experience in local, national, academic, and emergency settings   -->

<!-- Dual-column created based on the rmarkdown cookbook here: https://bookdown.org/yihui/rmarkdown-cookbook/multi-column.html -->



<br>


:::: {style="display: flex;"}

::: {}
```{r, out.width = "100%", fig.align = "center", echo=F}
knitr::include_graphics(here::here("images", "epiRhandbook_HexSticker_500x500.png"))
```
:::


::: {.col data-latex="{0.05\textwidth}"}
\ 
<!-- an empty Div (with a white space), serving as
a column separator -->
:::

::: {}
<span style="color: black;">**Escrito por profesionales de la epidemiología, para profesionales de la epidemiología**</span>

Somos epis de campo de todo el mundo, escribiendo en nuestro tiempo libre para ofrecer este recurso a la comunidad. Tu apoyo y comentarios son muy bienvenidos:

* **[Formulario](https://forms.gle/A5SnRVws7tPD15Js9)** estructurado
* Envía un email a **epiRhandbook@gmail.com** o un tweet **[\@epiRhandbook](https://twitter.com/epirhandbook)**  
* Envía problemas a nuestro **[Repositorio Github](https://github.com/epirhandbook/Epi_R_handbook)**  


:::

::::




<!-- ======================================================= -->
## Cómo utilizar este manual {-} 

* Navega por las páginas del índice o utiliza el cuadro de búsqueda
* Clica en los iconos "Copy" para copiar el código  
* Puedes seguir paso a paso las lecciones utilizando nuestras [bases de datos de ejemplo][Download handbook and data]  
* Consulta la sección "Recursos" de cada página para obtener más material

**Versión sin conexión**  

Consulta las instrucciones en la página de [Descargar el Manual y los datos].

**Idiomas**  

Queremos traducir este manual a otros idiomas. Si deseas ayudar, ponte en contacto con nosotros.



<!-- ======================================================= -->
## Agradecimientos {-}  

Este manual ha sido elaborado mediante la colaboración de profesionales de la epidemiología de todo el mundo, basándonos en nuestra experiencia en organismos sanitarios locales, estatales, provinciales y nacionales, la Organización Mundial de la Salud (OMS), Médicos Sin Fronteras (MSF), sistemas hospitalarios e instituciones académicas.

Este manual **no** es un producto aprobado por ninguna organización específica. Aunque nos esforzamos por ser precisos, no ofrecemos ninguna garantía sobre el contenido de este libro.


### Colaboradores {-}  

**Redactor jefe:** [Neale Batra](https://www.linkedin.com/in/neale-batra/) 

**Equipo central del proyecto:** [Neale Batra](https://www.linkedin.com/in/neale-batra/), [Alex Spina](https://github.com/aspina7), [Amrish Baidjoe](https://twitter.com/Ammer_B), Pat Keating, [Henry Laurenson-Schafer](https://github.com/henryls1), [Finlay Campbell](https://github.com/finlaycampbell)  

**Autores**: [Neale Batra](https://www.linkedin.com/in/neale-batra/), [Alex Spina](https://github.com/aspina7), [Paula Blomquist](https://www.linkedin.com/in/paula-bianca-blomquist-53188186/), [Finlay Campbell](https://github.com/finlaycampbell), [Henry Laurenson-Schafer](https://github.com/henryls1), [Isaac Florence](www.Twitter.com/isaacatflorence), [Natalie Fischer](https://www.linkedin.com/in/nataliefischer211/), [Aminata Ndiaye](https://twitter.com/aminata_fadl), [Liza Coyer]( https://www.linkedin.com/in/liza-coyer-86022040/), [Jonathan Polonsky](https://twitter.com/jonny_polonsky), [Yurie Izawa](https://ch.linkedin.com/in/yurie-izawa-a1590319), [Chris Bailey](https://twitter.com/cbailey_58?lang=en), [Daniel Molling](https://www.linkedin.com/in/daniel-molling-4005716a/), [Isha Berry](https://twitter.com/ishaberry2), [Emma Buajitti](https://twitter.com/buajitti), [Mathilde Mousset](https://mathildemousset.wordpress.com/research/), [Sara Hollis](https://www.linkedin.com/in/saramhollis/), Wen Lin  

**Revisores**: Pat Keating, Annick Lenglet, Margot Charette, Danielly Xavier, Esther Kukielka, Michelle Sloan, Aybüke Koyuncu, Rachel Burke, Kate Kelsey, [Berhe Etsay](https://www.linkedin.com/in/berhe-etsay-5752b1154/), John Rossow, Mackenzie Zendt, James Wright, Laura Haskins, [Flavio Finger](ffinger.github.io), Tim Taylor, [Jae Hyoung Tim Lee](https://www.linkedin.com/in/jaehyoungtlee/), [Brianna Bradley](https://www.linkedin.com/in/brianna-bradley-bb8658155), [Wayne Enanoria](https://www.linkedin.com/in/wenanoria), Manual Albela Miranda, [Molly Mantus](https://www.linkedin.com/in/molly-mantus-174550150/), Pattama Ulrich, Joseph Timothy, Adam Vaughan, Olivia Varsaneux, Lionel Monteiro, Joao Muianga  

**Illustraciones**: Calder Fong  


<!-- **Editor-in-Chief:** Neale Batra  -->

<!-- **Project core team:** Neale Batra, Alex Spina, Amrish Baidjoe, Pat Keating, Henry Laurenson-Schafer, Finlay Campbell   -->

<!-- **Authors**: Neale Batra, Alex Spina, Paula Blomquist, Finlay Campbell, Henry Laurenson-Schafer, [Isaac Florence](www.Twitter.com/isaacatflorence), Natalie Fischer, Aminata Ndiaye, Liza Coyer, Jonathan Polonsky, Yurie Izawa, Chris Bailey, Daniel Molling, Isha Berry, Emma Buajitti, Mathilde Mousset, Sara Hollis, Wen Lin   -->

<!-- **Reviewers**: Pat Keating, Mathilde Mousset, Annick Lenglet, Margot Charette, Isha Berry, Paula Blomquist, Natalie Fischer, Daniely Xavier, Esther Kukielka, Michelle Sloan, Aybüke Koyuncu, Rachel Burke, Daniel Molling, Kate Kelsey, Berhe Etsay, John Rossow, Mackenzie Zendt, James Wright, Wayne Enanoria, Laura Haskins, Flavio Finger, Tim Taylor, Jae Hyoung Tim Lee, Brianna Bradley, Manual Albela Miranda, Molly Mantus, Priscilla Spencer, Pattama Ulrich, Joseph Timothy, Adam Vaughan, Olivia Varsaneux, Lionel Monteiro, Joao Muianga   -->


### Financiación y apoyo {-}  

El manual recibió financiación de apoyo de [TEPHINET](https://www.tephinet.org/), la red mundial de Programas de Formación en Epidemiología de Campo (FETP) a través de una subvención para el desarrollo de capacidades de emergencia COVID-19.

La Red de Antiguos Alumnos de ([EAN](https://epietalumni.net/)) proporcionó apoyo administrativo, con un agradecimiento especial a Annika Wendland. EPIET es el Programa Europeo de Formación en Epidemiología de Intervención.

Un agradecimiento especial a Médicos Sin Fronteras (MSF) Centro Operativo de Ámsterdam (OCA) por su apoyo durante la elaboración de este manual.

*Esta publicación fue apoyada por el Acuerdo de Cooperación número NU2GGH001873, financiado por los Centros para el Control y la Prevención de Enfermedades a través de TEPHINET, un programa de The Task Force for Global Health. Su contenido es responsabilidad exclusiva de los autores y no representa necesariamente las opiniones oficiales de los Centros para el Control y la Prevención de Enfermedades, el Departamento de Salud y Servicios Humanos, The Task Force for Global Health, Inc. o TEPHINET.*



### Inspiración {-}  

La multitud de tutoriales y viñetas que aportaron conocimientos para el desarrollo del contenido del manual se acreditan en sus respectivas páginas.

De manera más general, las siguientes fuentes han servido de inspiración para este manual:
[El proyecto "R4Epis"](https://r4epis.netlify.app/) (una colaboración entre MSF y RECON)  
[R Epidemics Consortium (RECON)](https://www.repidemicsconsortium.org/)  
[El libro R for Data Science (R4DS)](https://r4ds.had.co.nz/)  
[bookdown: Creación de libros y documentos técnicos con R Markdown](https://bookdown.org/yihui/bookdown/)  
[Netlify](https://www.netlify.com) alberga este sitio web  


<!-- ### Image credits {-}   -->

<!-- Images in logo from US CDC Public Health Image Library) include [2013 Yemen looking for mosquito breeding sites](https://phil.cdc.gov/Details.aspx?pid=19623), [Ebola virus](https://phil.cdc.gov/Details.aspx?pid=23186), and [Survey in Rajasthan](https://phil.cdc.gov/Details.aspx?pid=19838).   -->


## Condiciones de uso y contribución {-}  

### Licencia {.unnumbered} 

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />Esta obra está bajo una <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.


Los cursos académicos y los programas de formación en epidemiología pueden utilizar este manual con sus estudiantes. Si tienes preguntas sobre el uso que se le va a dar, envía un correo electrónico a **epiRhandbook@gmail.com**.


### Citación {.unnumbered}

Batra, Neale, et al. Manual de R para Epidemiología. 2021. <a rel="license" href="https://zenodo.org/badge/231610102.svg"><img alt="DOI" style="border-width:0" src="https://zenodo.org/badge/231610102.svg" /></a><br />

### Contribución {.unnumbered}  

Si quieres hacer una contribución de contenido, por favor, ponte en contacto con nosotros primero a través de Github o por correo electrónico. Estamos implementando un calendario de actualizaciones y estamos creando una guía para colaboradores.

Ten en cuenta que el proyecto epiRhandbook se publica con un [Código de Conducta del Colaborador](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html) . Al contribuir a este proyecto, te comprometes a respetar sus términos.