---
title: "**Manipulación, transformación y procesamiento de datos**"
subtitle: "**Escuela de Verano de R**"
author: |
  **Francisco Favieri**  
  **Beatriz Soria**
date: "**Año 2025**"
output:
  slidy_presentation:
    keep_md: true
  pdf_document:
    keep_tex: true
  html_document:
    toc: true
  ioslides_presentation: default
  beamer_presentation: 
    theme: "Madrid"
editor_options: 
  markdown: 
    wrap: 72
fontsize: 24pt
---



# Introducción

En esta clase vamos a repasar algunos conceptos clave sobre el uso de
paquetes en R, centrándonos en el paquete `{tidyverse}`. A lo largo de
la sesión, abordaremos los siguientes temas:

✅ **Parte 1: ¿Qué es un paquete en R?** Veremos cómo funcionan los
paquetes y por qué son fundamentales para la programación en R.\
✅ **Parte 2: Exploración del paquete `{eph}`.** Conoceremos qué ofrece
este paquete y cómo facilita el trabajo con los datos de la Encuesta
Permanente de Hogares (EPH).\
✅ **Parte 3: Primeros comandos de exploración.** Aprenderemos a
examinar los datos descargados con `{eph}`, incluyendo visualización de
variables y estructuras.\
✅ **Parte 4: Introducción a `{tidyverse}`.** Empezaremos a trabajar con
uno de los paquetes más importantes para la manipulación de datos en R.

La clase tiene una duración de **2 horas y 30 minutos**, con **dos
recreos de 15 minutos** para que podamos despejarnos y mover las
piernas.

# Parte 1: ¿Qué es un paquete en R?

Un **paquete** en R es una colección de funciones, datos y documentación
organizados en un formato estructurado que extiende las capacidades de
R.

📌 Los paquetes permiten: - Agregar nuevas funciones a R. - Facilitar la
manipulación y visualización de datos. - Automatizar procesos y mejorar
la eficiencia en el análisis.

Los paquetes están disponibles en diferentes fuentes: - **CRAN**
(Comprehensive R Archive Network) es el repositorio oficial de paquetes
de R. Es una red de servidores donde se almacenan, verifican y
distribuyen los paquetes de R.

🔹 Más información:\
📌 Sitio oficial de CRAN: <https://cran.r-project.org>

-   **GitHub**: es una plataforma de desarrollo colaborativo donde los
    programadores pueden compartir código. En el caso de R, permite
    descargar paquetes en desarrollo que aún no han sido subidos a CRAN.

-   **Paquetes locales**: Paquetes creados y almacenados en tu
    computadora.

# Instalación y carga de paquetes en R

Para instalar un paquete desde CRAN, usamos:




``` r
install.packages("eph")  # Instala el paquete eph
```

Para instalar un paquete desde GitHub:


``` r
if (!requireNamespace("devtools", quietly = TRUE)) install.packages("devtools")
library(devtools)
install_github("tidyverse/ggplot2")  # Instala ggplot2 desde GitHub
```

Para cargar un paquete ya instalado:


``` r
library(tidyverse)  # Carga ggplot2 en la sesión de R
```

Para ver los paquetes instalados en tu sistema:


``` r
installed.packages()[,1]  # Muestra una lista de paquetes instalados
```

```
##               abind                ACEP            antiword             arcenso 
##             "abind"              "ACEP"          "antiword"           "arcenso" 
##                 ash         AsioHeaders             askpass          assertthat 
##               "ash"       "AsioHeaders"           "askpass"        "assertthat" 
##                  av           backports           base64enc          bayestestR 
##                "av"         "backports"         "base64enc"        "bayestestR" 
##                  BH                bigD              binman                 bit 
##                "BH"              "bigD"            "binman"               "bit" 
##               bit64              bitops                blob                brew 
##             "bit64"            "bitops"              "blob"              "brew" 
##                brio               broom               bslib              cachem 
##              "brio"             "broom"             "bslib"            "cachem" 
##               callr                 car             carData               cards 
##             "callr"               "car"           "carData"             "cards" 
##             caTools          cellranger              chattr           checkmate 
##           "caTools"        "cellranger"            "chattr"         "checkmate" 
##            chromote            classInt                 cli               clipr 
##          "chromote"          "classInt"               "cli"             "clipr" 
##               clock         collections          colorspace          commonmark 
##             "clock"       "collections"        "colorspace"        "commonmark" 
##              config          conflicted                coro         correlation 
##            "config"        "conflicted"              "coro"       "correlation" 
##            corrplot             cowplot               cpp11              crayon 
##          "corrplot"           "cowplot"             "cpp11"            "crayon" 
##         credentials           crosstalk                crul                curl 
##       "credentials"         "crosstalk"              "crul"              "curl" 
##           cyclocomp          data.table          datawizard                 DBI 
##         "cyclocomp"        "data.table"        "datawizard"               "DBI" 
##              dbplyr        densEstBayes               Deriv                desc 
##            "dbplyr"      "densEstBayes"             "Deriv"              "desc" 
##            devtools             diagram               dials          DiceDesign 
##          "devtools"           "diagram"             "dials"        "DiceDesign" 
##             diffobj              digest             discrim      distributional 
##           "diffobj"            "digest"           "discrim"    "distributional" 
##                doBy            doFuture             downlit               dplyr 
##              "doBy"          "doFuture"           "downlit"             "dplyr" 
##                  DT              dtplyr               e1071          effectsize 
##                "DT"            "dtplyr"             "e1071"        "effectsize" 
##            ellipsis                 eph            evaluate               expss 
##          "ellipsis"               "eph"          "evaluate"             "expss" 
##           extrafont         extrafontdb               fansi              farver 
##         "extrafont"       "extrafontdb"             "fansi"            "farver" 
##             fastmap           flipbookr         fontawesome   fontBitstreamVera 
##           "fastmap"         "flipbookr"       "fontawesome" "fontBitstreamVera" 
##      fontLiberation          fontquiver             forcats             foreach 
##    "fontLiberation"        "fontquiver"           "forcats"           "foreach" 
##         formattable             Formula               fresh                  fs 
##       "formattable"           "Formula"             "fresh"                "fs" 
##               furrr              future        future.apply              gargle 
##             "furrr"            "future"      "future.apply"            "gargle" 
##             gdtools            generics                gert              gfonts 
##           "gdtools"          "generics"              "gert"            "gfonts" 
##               ggalt           gganimate              ggdist           ggfittext 
##             "ggalt"         "gganimate"            "ggdist"         "ggfittext" 
##             ggforce               ggmap             ggplot2             ggrepel 
##           "ggforce"             "ggmap"           "ggplot2"           "ggrepel" 
##            ggridges           ggspatial              ggtext            ggthemes 
##          "ggridges"         "ggspatial"            "ggtext"          "ggthemes" 
##                  gh              gifski                Gini            gitcreds 
##                "gh"            "gifski"              "Gini"          "gitcreds" 
##             globals                glue         googledrive       googlesheets4 
##           "globals"              "glue"       "googledrive"     "googlesheets4" 
##               gower               GPfit           gridExtra            gridtext 
##             "gower"             "GPfit"         "gridExtra"          "gridtext" 
##                  gt              gtable           gtsummary             hardhat 
##                "gt"            "gtable"         "gtsummary"           "hardhat" 
##               haven                here               highr                 hms 
##             "haven"              "here"             "highr"               "hms" 
##          hrbrthemes           htmlTable           htmltools         htmlwidgets 
##        "hrbrthemes"         "htmlTable"         "htmltools"       "htmlwidgets" 
##            httpcode              httpuv                httr               httr2 
##          "httpcode"            "httpuv"              "httr"             "httr2" 
##                 ids              igraph                ineq               infer 
##               "ids"            "igraph"              "ineq"             "infer" 
##                 ini              inline             insight            installr 
##               "ini"            "inline"           "insight"          "installr" 
##               ipred             isoband           iterators             janitor 
##             "ipred"           "isoband"         "iterators"           "janitor" 
##                jpeg           jquerylib            jsonlite          juicyjuice 
##              "jpeg"         "jquerylib"          "jsonlite"        "juicyjuice" 
##          kableExtra                kknn               knitr            labeling 
##        "kableExtra"              "kknn"             "knitr"          "labeling" 
##      languageserver               later                lava            lazyeval 
##    "languageserver"             "later"              "lava"          "lazyeval" 
##             leaflet   leaflet.providers                 lhs           lifecycle 
##           "leaflet" "leaflet.providers"               "lhs"         "lifecycle" 
##               lintr             listenv            litedown                lme4 
##             "lintr"           "listenv"          "litedown"              "lme4" 
##                 loo             lpSolve           lubridate              maditr 
##               "loo"           "lpSolve"         "lubridate"            "maditr" 
##              magick            magrittr                maps            markdown 
##            "magick"          "magrittr"              "maps"          "markdown" 
##        MatrixModels         matrixStats             memoise      microbenchmark 
##      "MatrixModels"       "matrixStats"           "memoise"    "microbenchmark" 
##                mime              miniUI               minqa               minty 
##              "mime"            "miniUI"             "minqa"             "minty" 
##          modelbased           modeldata            modelenv              modelr 
##        "modelbased"         "modeldata"          "modelenv"            "modelr" 
##        modelsummary             munsell          naivebayes              ndjson 
##      "modelsummary"           "munsell"        "naivebayes"            "ndjson" 
##             netstat              nloptr            numDeriv             openssl 
##           "netstat"            "nloptr"          "numDeriv"           "openssl" 
##            openxlsx                 pak          parallelly          parameters 
##          "openxlsx"               "pak"        "parallelly"        "parameters" 
##             parsnip           patchwork            pbkrtest            pdftools 
##           "parsnip"         "patchwork"          "pbkrtest"          "pdftools" 
##         performance              pillar            pkgbuild           pkgconfig 
##       "performance"            "pillar"          "pkgbuild"         "pkgconfig" 
##             pkgdown             pkgload              plotly                plyr 
##           "pkgdown"           "pkgload"            "plotly"              "plyr" 
##                 png            polyclip           posterior              praise 
##               "png"          "polyclip"         "posterior"            "praise" 
##         prettyunits            processx             prodlim             profvis 
##       "prettyunits"          "processx"           "prodlim"           "profvis" 
##            progress           progressr               proj4            promises 
##          "progress"         "progressr"             "proj4"          "promises" 
##               proxy                  ps               purrr                qpdf 
##             "proxy"                "ps"             "purrr"              "qpdf" 
##                  qs            quadprog            quantreg            QuickJSR 
##                "qs"          "quadprog"          "quantreg"          "QuickJSR" 
##             R.cache         R.methodsS3                R.oo             R.utils 
##           "R.cache"       "R.methodsS3"              "R.oo"           "R.utils" 
##                  R6                ragg       RApiSerialize            rappdirs 
##                "R6"              "ragg"     "RApiSerialize"          "rappdirs" 
##              raster           rbibutils           rcmdcheck        RColorBrewer 
##            "raster"         "rbibutils"         "rcmdcheck"      "RColorBrewer" 
##                Rcpp       RcppArmadillo           RcppEigen        RcppParallel 
##              "Rcpp"     "RcppArmadillo"         "RcppEigen"      "RcppParallel" 
##               RCurl              Rdpack           reactable              reactR 
##             "RCurl"            "Rdpack"         "reactable"            "reactR" 
##             readODS               readr            readtext              readxl 
##           "readODS"             "readr"          "readtext"            "readxl" 
##                REAT             recipes          reformulas             reldist 
##              "REAT"           "recipes"        "reformulas"           "reldist" 
##             rematch            rematch2             remotes                renv 
##           "rematch"          "rematch2"           "remotes"              "renv" 
##              reprex                 rex                rhub               rJava 
##            "reprex"               "rex"              "rhub"             "rJava" 
##               rjson               rlang           rmarkdown                rosm 
##             "rjson"             "rlang"         "rmarkdown"              "rosm" 
##            roxygen2           rprojroot             rsample           RSelenium 
##          "roxygen2"         "rprojroot"           "rsample"         "RSelenium" 
##               rstan          rstantools          rstudioapi            Rttf2pt1 
##             "rstan"        "rstantools"        "rstudioapi"          "Rttf2pt1" 
##           rversions               rvest                  s2                sass 
##         "rversions"             "rvest"                "s2"              "sass" 
##              scales                 see             selectr           selenider 
##            "scales"               "see"           "selectr"         "selenider" 
##            selenium              semver               servr         sessioninfo 
##          "selenium"            "semver"             "servr"       "sessioninfo" 
##                  sf                 sfd              shades               shape 
##                "sf"               "sfd"            "shades"             "shape" 
##               shiny      shinydashboard        shinyWidgets              slider 
##             "shiny"    "shinydashboard"      "shinyWidgets"            "slider" 
##           snakecase         sourcetools                  sp             SparseM 
##         "snakecase"       "sourcetools"                "sp"           "SparseM" 
##             SQUAREM         StanHeaders             streamR          stringfish 
##           "SQUAREM"       "StanHeaders"           "streamR"        "stringfish" 
##             stringi             stringr            striprtf              styler 
##           "stringi"           "stringr"          "striprtf"            "styler" 
##             svglite                 sys         systemfonts              tables 
##           "svglite"               "sys"       "systemfonts"            "tables" 
##             tensorA               terra              testit            testthat 
##           "tensorA"             "terra"            "testit"          "testthat" 
##         textshaping              tibble          tidymodels               tidyr 
##       "textshaping"            "tibble"        "tidymodels"             "tidyr" 
##          tidyselect           tidyverse          timechange            timeDate 
##        "tidyselect"         "tidyverse"        "timechange"          "timeDate" 
##           tinytable             tinytex          transformr           triebeard 
##         "tinytable"           "tinytex"        "transformr"         "triebeard" 
##                tune              tweenr                tzdb               units 
##              "tune"            "tweenr"              "tzdb"             "units" 
##          urlchecker            urltools             usethis                utf8 
##        "urlchecker"          "urltools"           "usethis"              "utf8" 
##                uuid                  V8               vctrs             viridis 
##              "uuid"                "V8"             "vctrs"           "viridis" 
##         viridisLite               vroom               waldo                warp 
##       "viridisLite"             "vroom"             "waldo"              "warp" 
##               wdman             webshot           websocket         wesanderson 
##             "wdman"           "webshot"         "websocket"       "wesanderson" 
##             whisker              whoami               withr                  wk 
##           "whisker"            "whoami"             "withr"                "wk" 
##           workflows        workflowsets             writexl            WriteXLS 
##         "workflows"      "workflowsets"           "writexl"          "WriteXLS" 
##            xaringan       xaringanExtra      xaringanthemer                xfun 
##          "xaringan"     "xaringanExtra"    "xaringanthemer"              "xfun" 
##           XLConnect                xml2        xmlparsedata               xopen 
##         "XLConnect"              "xml2"      "xmlparsedata"             "xopen" 
##              xtable                yaml           yardstick                 zip 
##            "xtable"              "yaml"         "yardstick"               "zip" 
##                 zoo                base                boot               class 
##               "zoo"              "base"              "boot"             "class" 
##             cluster           codetools            compiler            datasets 
##           "cluster"         "codetools"          "compiler"          "datasets" 
##             foreign            graphics           grDevices                grid 
##           "foreign"          "graphics"         "grDevices"              "grid" 
##          KernSmooth             lattice                MASS              Matrix 
##        "KernSmooth"           "lattice"              "MASS"            "Matrix" 
##             methods                mgcv                nlme                nnet 
##           "methods"              "mgcv"              "nlme"              "nnet" 
##            parallel               rpart             spatial             splines 
##          "parallel"             "rpart"           "spatial"           "splines" 
##               stats              stats4            survival               tcltk 
##             "stats"            "stats4"          "survival"             "tcltk" 
##               tools        translations               utils 
##             "tools"      "translations"             "utils"
```

# Parte 2: ¿Qué es el paquete `{eph}`?

El paquete `{eph}` es una herramienta en R diseñada para facilitar el
acceso y manipulación de los microdatos de la **Encuesta Permanente de
Hogares (EPH)** del **INDEC** en Argentina. Permite descargar las bases
de datos directamente desde la web del INDEC sin necesidad de bajarlas
manualmente, y simplifica su análisis dentro del entorno de R.

**Más información y documentación oficial:** [CRAN -
eph](https://cran.r-project.org/web/packages/eph/eph.pdf)

## Instalación y carga de `{eph}`

``` r
install.packages("eph")  # Instala el paquete eph
library(eph)  # Carga el paquete eph
```

## Funciones principales de `{eph}`

El paquete cuenta con varias funciones clave. Aquí están las más
importantes:

| **Función**           | **¿Qué hace?**                                          |
|-------------------------------------------|-----------------------------|
| `get_microdata()`     | Descarga datos de la EPH directamente desde el INDEC.   |
| `organize_labels()`   | Reemplaza códigos numéricos por etiquetas descriptivas. |
| `categorize_area()`   | Clasifica regiones geográficas dentro de la EPH.        |
| `calculate_poverty()` | Calcula tasas de pobreza e indigencia.                  |

# Ejemplo de uso: Descargar datos de la EPH

Si queremos obtener los datos individuales del **4to trimestre de
2023**, usamos:


``` r
library(eph)  # Asegurar que el paquete está cargado

eph_data <- get_microdata(year = 2023, trimester = 4, type = "individual")

# Ver primeras filas de la base
dim(eph_data)
```

```
## [1] 47337   177
```

``` r
head(eph_data)
```

```
## # A tibble: 6 × 177
##   CODUSU     ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500 AGLOMERADO
##   <chr>     <int>     <int>     <int>      <int> <int>  <int> <chr>        <int>
## 1 TQRMNOSU…  2023         4         1          1     1     41 N                7
## 2 TQRMNOSU…  2023         4         1          2     1     41 N                7
## 3 TQRMNOTX…  2023         4         1          1     1     44 N               17
## 4 TQRMNOTX…  2023         4         1          2     1     44 N               17
## 5 TQRMNOTX…  2023         4         1          3     0     44 N               17
## 6 TQRMNORV…  2023         4         1          2     1     44 N               17
## # ℹ 168 more variables: PONDERA <int>, CH03 <int>, CH04 <int>, CH05 <chr>,
## #   CH06 <int>, CH07 <int>, CH08 <int>, CH09 <int>, CH10 <int>, CH11 <int>,
## #   CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>, CH15_COD <int>, CH16 <int>,
## #   CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>, CAT_OCUP <int>,
## #   CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>, PP02C3 <int>,
## #   PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>, PP02C8 <int>,
## #   PP02E <int>, PP02H <int>, PP02I <int>, PP03C <int>, PP03D <int>, …
```

Para ver qué variables tiene la base:


``` r
colnames(eph_data)  # Nombres de las variables
```

```
##   [1] "CODUSU"     "ANO4"       "TRIMESTRE"  "NRO_HOGAR"  "COMPONENTE"
##   [6] "H15"        "REGION"     "MAS_500"    "AGLOMERADO" "PONDERA"   
##  [11] "CH03"       "CH04"       "CH05"       "CH06"       "CH07"      
##  [16] "CH08"       "CH09"       "CH10"       "CH11"       "CH12"      
##  [21] "CH13"       "CH14"       "CH15"       "CH15_COD"   "CH16"      
##  [26] "CH16_COD"   "NIVEL_ED"   "ESTADO"     "CAT_OCUP"   "CAT_INAC"  
##  [31] "IMPUTA"     "PP02C1"     "PP02C2"     "PP02C3"     "PP02C4"    
##  [36] "PP02C5"     "PP02C6"     "PP02C7"     "PP02C8"     "PP02E"     
##  [41] "PP02H"      "PP02I"      "PP03C"      "PP03D"      "PP3E_TOT"  
##  [46] "PP3F_TOT"   "PP03G"      "PP03H"      "PP03I"      "PP03J"     
##  [51] "INTENSI"    "PP04A"      "PP04B_COD"  "PP04B1"     "PP04B2"    
##  [56] "PP04B3_MES" "PP04B3_ANO" "PP04B3_DIA" "PP04C"      "PP04C99"   
##  [61] "PP04D_COD"  "PP04G"      "PP05B2_MES" "PP05B2_ANO" "PP05B2_DIA"
##  [66] "PP05C_1"    "PP05C_2"    "PP05C_3"    "PP05E"      "PP05F"     
##  [71] "PP05H"      "PP06A"      "PP06C"      "PP06D"      "PP06E"     
##  [76] "PP06H"      "PP07A"      "PP07C"      "PP07D"      "PP07E"     
##  [81] "PP07F1"     "PP07F2"     "PP07F3"     "PP07F4"     "PP07F5"    
##  [86] "PP07G1"     "PP07G2"     "PP07G3"     "PP07G4"     "PP07G_59"  
##  [91] "PP07H"      "PP07I"      "PP07J"      "PP07K"      "PP08D1"    
##  [96] "PP08D4"     "PP08F1"     "PP08F2"     "PP08J1"     "PP08J2"    
## [101] "PP08J3"     "PP09A"      "PP09A_ESP"  "PP09B"      "PP09C"     
## [106] "PP09C_ESP"  "PP10A"      "PP10C"      "PP10D"      "PP10E"     
## [111] "PP11A"      "PP11B_COD"  "PP11B1"     "PP11B2_MES" "PP11B2_ANO"
## [116] "PP11B2_DIA" "PP11C"      "PP11C99"    "PP11D_COD"  "PP11G_ANO" 
## [121] "PP11G_MES"  "PP11G_DIA"  "PP11L"      "PP11L1"     "PP11M"     
## [126] "PP11N"      "PP11O"      "PP11P"      "PP11Q"      "PP11R"     
## [131] "PP11S"      "PP11T"      "P21"        "DECOCUR"    "IDECOCUR"  
## [136] "RDECOCUR"   "GDECOCUR"   "PDECOCUR"   "ADECOCUR"   "PONDIIO"   
## [141] "TOT_P12"    "P47T"       "DECINDR"    "IDECINDR"   "RDECINDR"  
## [146] "GDECINDR"   "PDECINDR"   "ADECINDR"   "PONDII"     "V2_M"      
## [151] "V3_M"       "V4_M"       "V5_M"       "V8_M"       "V9_M"      
## [156] "V10_M"      "V11_M"      "V12_M"      "V18_M"      "V19_AM"    
## [161] "V21_M"      "T_VI"       "ITF"        "DECIFR"     "IDECIFR"   
## [166] "RDECIFR"    "GDECIFR"    "PDECIFR"    "ADECIFR"    "IPCF"      
## [171] "DECCFR"     "IDECCFR"    "RDECCFR"    "GDECCFR"    "PDECCFR"   
## [176] "ADECCFR"    "PONDIH"
```

``` r
str(eph_data)       # Estructura de la base
```

```
## tibble [47,337 × 177] (S3: tbl_df/tbl/data.frame)
##  $ CODUSU    : chr [1:47337] "TQRMNOSUWHLMKQCDEFNFF00852219" "TQRMNOSUWHLMKQCDEFNFF00852219" "TQRMNOTXQHKOLMCDEGNFJ00794590" "TQRMNOTXQHKOLMCDEGNFJ00794590" ...
##  $ ANO4      : int [1:47337] 2023 2023 2023 2023 2023 2023 2023 2023 2023 2023 ...
##  $ TRIMESTRE : int [1:47337] 4 4 4 4 4 4 4 4 4 4 ...
##  $ NRO_HOGAR : int [1:47337] 1 1 1 1 1 1 1 1 1 1 ...
##  $ COMPONENTE: int [1:47337] 1 2 1 2 3 2 3 1 2 1 ...
##  $ H15       : int [1:47337] 1 1 1 1 0 1 1 1 1 1 ...
##  $ REGION    : int [1:47337] 41 41 44 44 44 44 44 44 44 44 ...
##  $ MAS_500   : chr [1:47337] "N" "N" "N" "N" ...
##  $ AGLOMERADO: int [1:47337] 7 7 17 17 17 17 17 17 17 93 ...
##  $ PONDERA   : int [1:47337] 370 370 281 281 281 165 165 168 168 85 ...
##  $ CH03      : int [1:47337] 1 2 1 2 3 1 3 1 2 1 ...
##  $ CH04      : int [1:47337] 1 2 1 2 2 2 2 1 2 1 ...
##  $ CH05      : chr [1:47337] "28/08/1963" "26/02/1971" "26/08/1989" "30/01/1991" ...
##  $ CH06      : int [1:47337] 60 52 34 32 6 77 43 74 87 47 ...
##  $ CH07      : int [1:47337] 2 2 1 1 5 4 5 2 2 2 ...
##  $ CH08      : int [1:47337] 1 1 1 1 1 1 1 1 1 4 ...
##  $ CH09      : int [1:47337] 1 1 1 1 1 1 1 1 1 1 ...
##  $ CH10      : int [1:47337] 2 2 2 2 1 2 2 2 2 2 ...
##  $ CH11      : int [1:47337] 0 0 0 0 1 0 0 0 0 0 ...
##  $ CH12      : int [1:47337] 7 4 4 4 2 2 4 2 2 2 ...
##  $ CH13      : int [1:47337] 1 1 1 1 2 2 1 1 1 1 ...
##  $ CH14      : chr [1:47337] "" "" "" "" ...
##  $ CH15      : int [1:47337] 1 1 1 1 1 4 1 2 2 1 ...
##  $ CH15_COD  : int [1:47337] NA NA NA NA NA 208 NA NA NA NA ...
##  $ CH16      : int [1:47337] 1 1 1 1 1 1 1 1 1 1 ...
##  $ CH16_COD  : int [1:47337] NA NA NA NA NA NA NA NA NA NA ...
##  $ NIVEL_ED  : int [1:47337] 6 4 4 4 1 1 4 2 2 2 ...
##  $ ESTADO    : int [1:47337] 1 3 1 1 4 3 1 3 3 1 ...
##  $ CAT_OCUP  : int [1:47337] 3 0 3 3 0 0 3 0 0 2 ...
##  $ CAT_INAC  : int [1:47337] 0 4 0 0 3 4 0 1 1 0 ...
##  $ IMPUTA    : int [1:47337] NA NA NA NA NA NA NA NA NA NA ...
##  $ PP02C1    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C2    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C3    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C4    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C5    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C6    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C7    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02C8    : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02E     : int [1:47337] 0 0 0 0 0 0 0 0 0 0 ...
##  $ PP02H     : int [1:47337] 0 2 0 0 0 2 0 2 2 0 ...
##  $ PP02I     : int [1:47337] 0 2 0 0 0 2 0 2 2 0 ...
##  $ PP03C     : int [1:47337] 0 NA 1 1 NA NA 1 NA NA 1 ...
##  $ PP03D     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP3E_TOT  : int [1:47337] 0 NA 36 15 NA NA 48 NA NA 60 ...
##  $ PP3F_TOT  : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP03G     : int [1:47337] 2 NA 1 2 NA NA 2 NA NA 2 ...
##  $ PP03H     : int [1:47337] 0 NA 1 0 NA NA 0 NA NA 0 ...
##  $ PP03I     : int [1:47337] 2 NA 1 2 NA NA 2 NA NA 2 ...
##  $ PP03J     : int [1:47337] 2 NA 1 2 NA NA 2 NA NA 2 ...
##  $ INTENSI   : int [1:47337] 4 NA 2 2 NA NA 3 NA NA 3 ...
##  $ PP04A     : int [1:47337] 1 NA 1 2 NA NA 2 NA NA 2 ...
##  $ PP04B_COD : chr [1:47337] "8401" "" "8401" "9700" ...
##  $ PP04B1    : int [1:47337] 2 NA 2 1 NA NA 2 NA NA 2 ...
##  $ PP04B2    : int [1:47337] 0 NA 0 1 NA NA 0 NA NA 0 ...
##  $ PP04B3_MES: int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP04B3_ANO: int [1:47337] 0 NA 0 1 NA NA 0 NA NA 0 ...
##  $ PP04B3_DIA: int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP04C     : int [1:47337] 9 NA 7 0 NA NA 5 NA NA 1 ...
##  $ PP04C99   : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP04D_COD : chr [1:47337] "11333" "" "48323" "55314" ...
##  $ PP04G     : int [1:47337] 1 NA 1 0 NA NA 1 NA NA 8 ...
##  $ PP05B2_MES: int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP05B2_ANO: int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP05B2_DIA: int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP05C_1   : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 1 ...
##  $ PP05C_2   : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 3 ...
##  $ PP05C_3   : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 1 ...
##  $ PP05E     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 2 ...
##  $ PP05F     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 7 ...
##  $ PP05H     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 3 ...
##  $ PP06A     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 2 ...
##  $ PP06C     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 400000 ...
##  $ PP06D     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP06E     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP06H     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP07A     : int [1:47337] 6 NA 6 0 NA NA 6 NA NA 0 ...
##  $ PP07C     : int [1:47337] 2 NA 2 0 NA NA 2 NA NA 0 ...
##  $ PP07D     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP07E     : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP07F1    : int [1:47337] 2 NA 2 2 NA NA 2 NA NA 0 ...
##  $ PP07F2    : int [1:47337] 2 NA 2 2 NA NA 2 NA NA 0 ...
##  $ PP07F3    : int [1:47337] 2 NA 2 2 NA NA 2 NA NA 0 ...
##  $ PP07F4    : int [1:47337] 2 NA 2 2 NA NA 2 NA NA 0 ...
##  $ PP07F5    : int [1:47337] 5 NA 5 5 NA NA 5 NA NA 0 ...
##  $ PP07G1    : int [1:47337] 1 NA 1 2 NA NA 1 NA NA 0 ...
##  $ PP07G2    : int [1:47337] 1 NA 1 2 NA NA 1 NA NA 0 ...
##  $ PP07G3    : int [1:47337] 1 NA 1 2 NA NA 1 NA NA 0 ...
##  $ PP07G4    : int [1:47337] 1 NA 1 2 NA NA 1 NA NA 0 ...
##  $ PP07G_59  : int [1:47337] 0 NA 0 5 NA NA 0 NA NA 0 ...
##  $ PP07H     : int [1:47337] 1 NA 1 2 NA NA 1 NA NA 0 ...
##  $ PP07I     : int [1:47337] 0 NA 0 2 NA NA 0 NA NA 0 ...
##  $ PP07J     : int [1:47337] 1 NA 3 1 NA NA 1 NA NA 0 ...
##  $ PP07K     : int [1:47337] 1 NA 1 2 NA NA 1 NA NA 0 ...
##  $ PP08D1    : int [1:47337] -9 NA 450000 200000 NA NA -9 NA NA 0 ...
##  $ PP08D4    : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP08F1    : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP08F2    : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##  $ PP08J1    : int [1:47337] 0 NA 0 0 NA NA 0 NA NA 0 ...
##   [list output truncated]
```

# Aplicando `organize_labels()` para etiquetas descriptivas

Los datos descargados contienen variables con códigos numéricos
difíciles de interpretar. Para hacerlos más legibles, utilizamos
`organize_labels()`:


``` r
# Convertir códigos numéricos en etiquetas descriptivas
eph_data_labeled <- organize_labels(eph_data)

# Comparar antes y después
head(eph_data[c("CH04", "ESTADO", "CAT_OCUP")])  # Antes de aplicar organize_labels()
```

```
## # A tibble: 6 × 3
##    CH04 ESTADO CAT_OCUP
##   <int>  <int>    <int>
## 1     1      1        3
## 2     2      3        0
## 3     1      1        3
## 4     2      1        3
## 5     2      4        0
## 6     2      3        0
```

``` r
head(eph_data_labeled[c("CH04", "ESTADO", "CAT_OCUP")])  # Después de aplicar organize_labels()
```

```
## # A tibble: 6 × 3
##   CH04       ESTADO     CAT_OCUP  
##   <labelled> <labelled> <labelled>
## 1 1          1          3         
## 2 2          3          0         
## 3 1          1          3         
## 4 2          1          3         
## 5 2          4          0         
## 6 2          3          0
```

## Explicación:

-   `CH04`: Representa el sexo del encuestado (antes: `1, 2`, después:
    `"Varón"`, `"Mujer"`).
-   `ESTADO`: Estado de actividad laboral (antes: `1, 2, 3`, después:
    `"Ocupado"`, `"Desocupado"`, `"Inactivo"`).
-   `CAT_OCUP`: Categoría ocupacional (antes: `1, 2, 3, 4`, después:
    `"Patrón"`, `"Cuenta Propia"`, `"Asalariado"`,
    `"Trabajador Familiar"`).

## Para obtener un resumen de las etiquetas aplicadas:


``` r
summary(eph_data_labeled)
```

```
##     CODUSU               ANO4        TRIMESTRE   NRO_HOGAR     
##  Length:47337       Min.   :2023   Min.   :4   Min.   : 1.000  
##  Class1:labelled    1st Qu.:2023   1st Qu.:4   1st Qu.: 1.000  
##  Class2:character   Median :2023   Median :4   Median : 1.000  
##  Mode  :character   Mean   :2023   Mean   :4   Mean   : 1.042  
##                     3rd Qu.:2023   3rd Qu.:4   3rd Qu.: 1.000  
##                     Max.   :2023   Max.   :4   Max.   :71.000  
##                                                                
##    COMPONENTE          H15             REGION        MAS_500         
##  Min.   : 1.000   Min.   :0.0000   Min.   : 1.00   Length:47337      
##  1st Qu.: 1.000   1st Qu.:1.0000   1st Qu.:40.00   Class1:labelled   
##  Median : 2.000   Median :1.0000   Median :42.00   Class2:character  
##  Mean   : 2.461   Mean   :0.8787   Mean   :35.62   Mode  :character  
##  3rd Qu.: 3.000   3rd Qu.:1.0000   3rd Qu.:43.00                     
##  Max.   :16.000   Max.   :2.0000   Max.   :44.00                     
##                                                                      
##    AGLOMERADO       PONDERA            CH03             CH04      
##  Min.   : 2.00   Min.   :  27.0   Min.   : 1.000   Min.   :1.000  
##  1st Qu.:10.00   1st Qu.: 173.0   1st Qu.: 1.000   1st Qu.:1.000  
##  Median :22.00   Median : 316.0   Median : 2.000   Median :2.000  
##  Mean   :23.45   Mean   : 623.8   Mean   : 2.455   Mean   :1.523  
##  3rd Qu.:32.00   3rd Qu.: 642.0   3rd Qu.: 3.000   3rd Qu.:2.000  
##  Max.   :93.00   Max.   :8937.0   Max.   :10.000   Max.   :2.000  
##                                                                   
##      CH05                CH06             CH07            CH08        
##  Length:47337       Min.   : -1.00   Min.   :1.000   Min.   :  1.000  
##  Class1:labelled    1st Qu.: 18.00   1st Qu.:2.000   1st Qu.:  1.000  
##  Class2:character   Median : 34.00   Median :5.000   Median :  1.000  
##  Mode  :character   Mean   : 36.23   Mean   :3.516   Mean   :  2.121  
##                     3rd Qu.: 53.00   3rd Qu.:5.000   3rd Qu.:  4.000  
##                     Max.   :102.00   Max.   :9.000   Max.   :123.000  
##                                                                       
##       CH09            CH10           CH11             CH12       
##  Min.   :1.000   Min.   :0.00   Min.   :0.0000   Min.   : 0.000  
##  1st Qu.:1.000   1st Qu.:1.00   1st Qu.:0.0000   1st Qu.: 2.000  
##  Median :1.000   Median :2.00   Median :0.0000   Median : 4.000  
##  Mean   :1.089   Mean   :1.69   Mean   :0.3693   Mean   : 4.003  
##  3rd Qu.:1.000   3rd Qu.:2.00   3rd Qu.:1.0000   3rd Qu.: 6.000  
##  Max.   :9.000   Max.   :9.00   Max.   :9.0000   Max.   :99.000  
##                                                                  
##       CH13           CH14                CH15          CH15_COD     
##  Min.   :0.000   Length:47337       Min.   :1.000   Min.   :  2.00  
##  1st Qu.:1.000   Class1:labelled    1st Qu.:1.000   1st Qu.: 14.00  
##  Median :1.000   Class2:character   Median :1.000   Median : 50.00  
##  Mean   :1.459   Mode  :character   Mean   :1.423   Mean   : 78.14  
##  3rd Qu.:2.000                      3rd Qu.:1.000   3rd Qu.: 86.00  
##  Max.   :9.000                      Max.   :9.000   Max.   :999.00  
##                                                     NA's   :40289   
##       CH16          CH16_COD         NIVEL_ED         ESTADO     
##  Min.   :1.000   Min.   :  2.00   Min.   :1.000   Min.   :0.000  
##  1st Qu.:1.000   1st Qu.: 10.00   1st Qu.:2.000   1st Qu.:1.000  
##  Median :1.000   Median : 50.00   Median :4.000   Median :3.000  
##  Mean   :1.304   Mean   : 78.21   Mean   :3.752   Mean   :2.195  
##  3rd Qu.:1.000   3rd Qu.: 90.00   3rd Qu.:5.000   3rd Qu.:3.000  
##  Max.   :9.000   Max.   :504.00   Max.   :7.000   Max.   :4.000  
##                  NA's   :46620                                   
##     CAT_OCUP        CAT_INAC         IMPUTA          PP02C1       
##  Min.   :0.000   Min.   :0.000   Min.   :1       Min.   :0.00000  
##  1st Qu.:0.000   1st Qu.:0.000   1st Qu.:1       1st Qu.:0.00000  
##  Median :0.000   Median :1.000   Median :1       Median :0.00000  
##  Mean   :1.268   Mean   :1.716   Mean   :1       Mean   :0.03606  
##  3rd Qu.:3.000   3rd Qu.:3.000   3rd Qu.:1       3rd Qu.:0.00000  
##  Max.   :4.000   Max.   :7.000   Max.   :1       Max.   :2.00000  
##                                  NA's   :47229                    
##      PP02C2            PP02C3           PP02C4           PP02C5       
##  Min.   :0.00000   Min.   :0.0000   Min.   :0.0000   Min.   :0.00000  
##  1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:0.00000  
##  Median :0.00000   Median :0.0000   Median :0.0000   Median :0.00000  
##  Mean   :0.02712   Mean   :0.0346   Mean   :0.0398   Mean   :0.03841  
##  3rd Qu.:0.00000   3rd Qu.:0.0000   3rd Qu.:0.0000   3rd Qu.:0.00000  
##  Max.   :2.00000   Max.   :2.0000   Max.   :2.0000   Max.   :2.00000  
##                                                                       
##      PP02C6            PP02C7           PP02C8            PP02E        
##  Min.   :0.00000   Min.   :0.0000   Min.   :0.00000   Min.   :0.00000  
##  1st Qu.:0.00000   1st Qu.:0.0000   1st Qu.:0.00000   1st Qu.:0.00000  
##  Median :0.00000   Median :0.0000   Median :0.00000   Median :0.00000  
##  Mean   :0.02947   Mean   :0.0387   Mean   :0.04022   Mean   :0.01227  
##  3rd Qu.:0.00000   3rd Qu.:0.0000   3rd Qu.:0.00000   3rd Qu.:0.00000  
##  Max.   :2.00000   Max.   :2.0000   Max.   :2.00000   Max.   :5.00000  
##                                                                        
##      PP02H            PP02I            PP03C           PP03D       
##  Min.   :0.0000   Min.   :0.0000   Min.   :0.000   Min.   : 0.000  
##  1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:1.000   1st Qu.: 0.000  
##  Median :0.0000   Median :0.0000   Median :1.000   Median : 0.000  
##  Mean   :0.7994   Mean   :0.7967   Mean   :1.089   Mean   : 0.238  
##  3rd Qu.:2.0000   3rd Qu.:2.0000   3rd Qu.:1.000   3rd Qu.: 0.000  
##  Max.   :2.0000   Max.   :2.0000   Max.   :2.000   Max.   :10.000  
##                                    NA's   :26025   NA's   :26025   
##     PP3E_TOT         PP3F_TOT           PP03G           PP03H      
##  Min.   :  0.00   Min.   :  0.000   Min.   :1.00    Min.   :0.00   
##  1st Qu.: 25.00   1st Qu.:  0.000   1st Qu.:2.00    1st Qu.:0.00   
##  Median : 40.00   Median :  0.000   Median :2.00    Median :0.00   
##  Mean   : 37.27   Mean   :  2.102   Mean   :1.84    Mean   :0.18   
##  3rd Qu.: 48.00   3rd Qu.:  0.000   3rd Qu.:2.00    3rd Qu.:0.00   
##  Max.   :999.00   Max.   :999.000   Max.   :9.00    Max.   :9.00   
##  NA's   :26025    NA's   :26025     NA's   :26025   NA's   :26025  
##      PP03I           PP03J          INTENSI          PP04A      
##  Min.   :1.000   Min.   :1.00    Min.   :1.000   Min.   :1.000  
##  1st Qu.:2.000   1st Qu.:2.00    1st Qu.:2.000   1st Qu.:2.000  
##  Median :2.000   Median :2.00    Median :2.000   Median :2.000  
##  Mean   :1.863   Mean   :1.86    Mean   :2.232   Mean   :1.787  
##  3rd Qu.:2.000   3rd Qu.:2.00    3rd Qu.:3.000   3rd Qu.:2.000  
##  Max.   :9.000   Max.   :9.00    Max.   :4.000   Max.   :3.000  
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##   PP04B_COD             PP04B1          PP04B2         PP04B3_MES    
##  Length:47337       Min.   :1.000   Min.   : 0.000   Min.   : 0.000  
##  Class1:labelled    1st Qu.:2.000   1st Qu.: 0.000   1st Qu.: 0.000  
##  Class2:character   Median :2.000   Median : 0.000   Median : 0.000  
##  Mode  :character   Mean   :1.931   Mean   : 0.102   Mean   : 0.117  
##                     3rd Qu.:2.000   3rd Qu.: 0.000   3rd Qu.: 0.000  
##                     Max.   :2.000   Max.   :21.000   Max.   :99.000  
##                     NA's   :26025   NA's   :26025    NA's   :26025   
##    PP04B3_ANO       PP04B3_DIA         PP04C          PP04C99     
##  Min.   : 0.000   Min.   : 0.000   Min.   : 0.00   Min.   :0.000  
##  1st Qu.: 0.000   1st Qu.: 0.000   1st Qu.: 2.00   1st Qu.:0.000  
##  Median : 0.000   Median : 0.000   Median : 6.00   Median :0.000  
##  Mean   : 0.315   Mean   : 0.049   Mean   :17.86   Mean   :0.725  
##  3rd Qu.: 0.000   3rd Qu.: 0.000   3rd Qu.:10.00   3rd Qu.:0.000  
##  Max.   :99.000   Max.   :99.000   Max.   :99.00   Max.   :9.000  
##  NA's   :26025    NA's   :26025    NA's   :26025   NA's   :26025  
##   PP04D_COD             PP04G          PP05B2_MES      PP05B2_ANO    
##  Length:47337       Min.   : 0.000   Min.   :0.000   Min.   : 0.000  
##  Class1:labelled    1st Qu.: 1.000   1st Qu.:0.000   1st Qu.: 0.000  
##  Class2:character   Median : 1.000   Median :0.000   Median : 0.000  
##  Mode  :character   Mean   : 2.607   Mean   :0.005   Mean   : 0.017  
##                     3rd Qu.: 4.000   3rd Qu.:0.000   3rd Qu.: 0.000  
##                     Max.   :10.000   Max.   :8.000   Max.   :23.000  
##                     NA's   :26025    NA's   :26025   NA's   :26025   
##    PP05B2_DIA       PP05C_1         PP05C_2         PP05C_3     
##  Min.   :0e+00   Min.   :0.000   Min.   :0.000   Min.   :0.000  
##  1st Qu.:0e+00   1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000  
##  Median :0e+00   Median :0.000   Median :0.000   Median :0.000  
##  Mean   :3e-03   Mean   :0.367   Mean   :0.604   Mean   :0.573  
##  3rd Qu.:0e+00   3rd Qu.:1.000   3rd Qu.:1.000   3rd Qu.:1.000  
##  Max.   :2e+01   Max.   :9.000   Max.   :9.000   Max.   :9.000  
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##      PP05E           PP05F           PP05H           PP06A      
##  Min.   :0.000   Min.   :0.00    Min.   :0.000   Min.   :0.000  
##  1st Qu.:0.000   1st Qu.:0.00    1st Qu.:0.000   1st Qu.:0.000  
##  Median :0.000   Median :0.00    Median :0.000   Median :0.000  
##  Mean   :0.255   Mean   :1.78    Mean   :1.346   Mean   :0.457  
##  3rd Qu.:0.000   3rd Qu.:7.00    3rd Qu.:2.000   3rd Qu.:1.000  
##  Max.   :9.000   Max.   :9.00    Max.   :9.000   Max.   :2.000  
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##      PP06C             PP06D             PP06E           PP06H      
##  Min.   :     -9   Min.   :     -9   Min.   :0.000   Min.   :0.000  
##  1st Qu.:      0   1st Qu.:      0   1st Qu.:0.000   1st Qu.:0.000  
##  Median :      0   Median :      0   Median :0.000   Median :0.000  
##  Mean   :  28163   Mean   :   8118   Mean   :0.144   Mean   :0.056  
##  3rd Qu.:      0   3rd Qu.:      0   3rd Qu.:0.000   3rd Qu.:0.000  
##  Max.   :8000000   Max.   :2000000   Max.   :9.000   Max.   :2.000  
##  NA's   :26025     NA's   :26025     NA's   :26025   NA's   :26025  
##      PP07A           PP07C           PP07D           PP07E      
##  Min.   :0.000   Min.   :0.000   Min.   :0.000   Min.   :0.000  
##  1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000  
##  Median :5.000   Median :2.000   Median :0.000   Median :0.000  
##  Mean   :3.481   Mean   :1.646   Mean   :0.975   Mean   :0.465  
##  3rd Qu.:6.000   3rd Qu.:2.000   3rd Qu.:0.000   3rd Qu.:0.000  
##  Max.   :9.000   Max.   :9.000   Max.   :9.000   Max.   :4.000  
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##      PP07F1          PP07F2          PP07F3          PP07F4     
##  Min.   :0.000   Min.   :0.000   Min.   :0.000   Min.   :0.000  
##  1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000  
##  Median :2.000   Median :2.000   Median :2.000   Median :2.000  
##  Mean   :1.371   Mean   :1.475   Mean   :1.467   Mean   :1.431  
##  3rd Qu.:2.000   3rd Qu.:2.000   3rd Qu.:2.000   3rd Qu.:2.000  
##  Max.   :9.000   Max.   :9.000   Max.   :2.000   Max.   :2.000  
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##      PP07F5          PP07G1          PP07G2          PP07G3     
##  Min.   :0.000   Min.   :0.000   Min.   :0       Min.   :0      
##  1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0       1st Qu.:0      
##  Median :5.000   Median :1.000   Median :1       Median :1      
##  Mean   :2.914   Mean   :0.997   Mean   :1       Mean   :1      
##  3rd Qu.:5.000   3rd Qu.:2.000   3rd Qu.:2       3rd Qu.:2      
##  Max.   :5.000   Max.   :9.000   Max.   :9       Max.   :9      
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##      PP07G4         PP07G_59         PP07H           PP07I      
##  Min.   :0.000   Min.   :0.000   Min.   :0.000   Min.   :0.000  
##  1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000   1st Qu.:0.000  
##  Median :1.000   Median :0.000   Median :1.000   Median :0.000  
##  Mean   :0.998   Mean   :1.172   Mean   :1.018   Mean   :0.511  
##  3rd Qu.:2.000   3rd Qu.:0.000   3rd Qu.:2.000   3rd Qu.:1.000  
##  Max.   :9.000   Max.   :5.000   Max.   :2.000   Max.   :2.000  
##  NA's   :26025   NA's   :26025   NA's   :26025   NA's   :26025  
##      PP07J           PP07K           PP08D1            PP08D4        
##  Min.   :0.000   Min.   :0.000   Min.   :     -9   Min.   :    0.00  
##  1st Qu.:0.000   1st Qu.:0.000   1st Qu.:      0   1st Qu.:    0.00  
##  Median :1.000   Median :1.000   Median :  85000   Median :    0.00  
##  Mean   :0.911   Mean   :1.463   Mean   : 143513   Mean   :   20.69  
##  3rd Qu.:1.000   3rd Qu.:2.000   3rd Qu.: 230000   3rd Qu.:    0.00  
##  Max.   :9.000   Max.   :9.000   Max.   :5000000   Max.   :82000.00  
##  NA's   :26025   NA's   :26025   NA's   :26025     NA's   :26025     
##      PP08F1           PP08F2             PP08J1              PP08J2      
##  Min.   :    -9   Min.   :    -9.0   Min.   :     -9.0   Min.   :    -9  
##  1st Qu.:     0   1st Qu.:     0.0   1st Qu.:      0.0   1st Qu.:     0  
##  Median :     0   Median :     0.0   Median :      0.0   Median :     0  
##  Mean   :  1752   Mean   :   124.2   Mean   :    681.3   Mean   :  1281  
##  3rd Qu.:     0   3rd Qu.:     0.0   3rd Qu.:      0.0   3rd Qu.:     0  
##  Max.   :800000   Max.   :300000.0   Max.   :1500000.0   Max.   :500000  
##  NA's   :26025    NA's   :26025      NA's   :26025       NA's   :26025   
##      PP08J3             PP09A        PP09A_ESP             PP09B      
##  Min.   :    -9.0   Min.   :0.000   Length:47337       Min.   :0.000  
##  1st Qu.:     0.0   1st Qu.:0.000   Class1:labelled    1st Qu.:0.000  
##  Median :     0.0   Median :0.000   Class2:character   Median :0.000  
##  Mean   :   104.9   Mean   :0.293   Mode  :character   Mean   :0.201  
##  3rd Qu.:     0.0   3rd Qu.:0.000                      3rd Qu.:0.000  
##  Max.   :300000.0   Max.   :9.000                      Max.   :2.000  
##  NA's   :26025      NA's   :26025                      NA's   :26025  
##      PP09C        PP09C_ESP             PP10A           PP10C      
##  Min.   :0.000   Length:47337       Min.   :1.00    Min.   :1.00   
##  1st Qu.:0.000   Class1:labelled    1st Qu.:2.00    1st Qu.:1.00   
##  Median :0.000   Class2:character   Median :3.00    Median :2.00   
##  Mean   :0.008   Mode  :character   Mean   :3.14    Mean   :1.57   
##  3rd Qu.:0.000                      3rd Qu.:5.00    3rd Qu.:2.00   
##  Max.   :2.000                      Max.   :5.00    Max.   :2.00   
##  NA's   :26025                      NA's   :46282   NA's   :46282  
##      PP10D           PP10E           PP11A        PP11B_COD        
##  Min.   :0.00    Min.   :0.00    Min.   :0.00    Length:47337      
##  1st Qu.:0.00    1st Qu.:1.00    1st Qu.:0.00    Class1:labelled   
##  Median :1.00    Median :2.00    Median :2.00    Class2:character  
##  Mean   :0.72    Mean   :2.42    Mean   :1.47    Mode  :character  
##  3rd Qu.:1.00    3rd Qu.:4.00    3rd Qu.:2.00                      
##  Max.   :2.00    Max.   :6.00    Max.   :3.00                      
##  NA's   :46282   NA's   :46282   NA's   :46282                     
##      PP11B1        PP11B2_MES      PP11B2_ANO      PP11B2_DIA   
##  Min.   :0.0     Min.   : 0.00   Min.   : 0.0    Min.   : 0.00  
##  1st Qu.:0.0     1st Qu.: 0.00   1st Qu.: 0.0    1st Qu.: 0.00  
##  Median :2.0     Median : 0.00   Median : 0.0    Median : 0.00  
##  Mean   :1.4     Mean   : 0.16   Mean   : 0.1    Mean   : 0.15  
##  3rd Qu.:2.0     3rd Qu.: 0.00   3rd Qu.: 0.0    3rd Qu.: 0.00  
##  Max.   :2.0     Max.   :10.00   Max.   :25.0    Max.   :25.00  
##  NA's   :46282   NA's   :46282   NA's   :46282   NA's   :46282  
##      PP11C          PP11C99       PP11D_COD           PP11G_ANO    
##  Min.   : 0.00   Min.   :0.00    Length:47337       Min.   : 0.00  
##  1st Qu.: 0.00   1st Qu.:0.00    Class1:labelled    1st Qu.: 0.00  
##  Median : 1.00   Median :0.00    Class2:character   Median : 0.00  
##  Mean   :13.43   Mean   :0.63    Mode  :character   Mean   : 1.08  
##  3rd Qu.: 6.00   3rd Qu.:0.00                       3rd Qu.: 0.00  
##  Max.   :99.00   Max.   :9.00                       Max.   :99.00  
##  NA's   :46282   NA's   :46282                      NA's   :46282  
##    PP11G_MES       PP11G_DIA         PP11L           PP11L1     
##  Min.   : 0.00   Min.   : 0.0    Min.   :0.0     Min.   :0.00   
##  1st Qu.: 0.00   1st Qu.: 0.0    1st Qu.:0.0     1st Qu.:0.00   
##  Median : 0.00   Median : 0.0    Median :0.0     Median :0.00   
##  Mean   : 1.19   Mean   : 1.5    Mean   :0.4     Mean   :0.92   
##  3rd Qu.: 1.00   3rd Qu.: 0.0    3rd Qu.:0.0     3rd Qu.:2.00   
##  Max.   :99.00   Max.   :99.0    Max.   :7.0     Max.   :2.00   
##  NA's   :46282   NA's   :46282   NA's   :46282   NA's   :46282  
##      PP11M           PP11N           PP11O           PP11P      
##  Min.   :0.00    Min.   :0.00    Min.   :0.00    Min.   :0.0    
##  1st Qu.:0.00    1st Qu.:0.00    1st Qu.:0.00    1st Qu.:0.0    
##  Median :0.00    Median :1.00    Median :1.00    Median :0.0    
##  Mean   :0.89    Mean   :1.06    Mean   :2.47    Mean   :0.2    
##  3rd Qu.:3.00    3rd Qu.:2.00    3rd Qu.:4.00    3rd Qu.:0.0    
##  Max.   :3.00    Max.   :9.00    Max.   :9.00    Max.   :9.0    
##  NA's   :46282   NA's   :46282   NA's   :46282   NA's   :46282  
##      PP11Q           PP11R           PP11S           PP11T      
##  Min.   :0.0     Min.   :0.00    Min.   :0.00    Min.   :0.00   
##  1st Qu.:0.0     1st Qu.:0.00    1st Qu.:0.00    1st Qu.:0.00   
##  Median :0.0     Median :0.00    Median :0.00    Median :2.00   
##  Mean   :0.2     Mean   :0.17    Mean   :0.17    Mean   :1.11   
##  3rd Qu.:0.0     3rd Qu.:0.00    3rd Qu.:0.00    3rd Qu.:2.00   
##  Max.   :9.0     Max.   :2.00    Max.   :2.00    Max.   :9.00   
##  NA's   :46282   NA's   :46282   NA's   :46282   NA's   :46282  
##       P21            DECOCUR            IDECOCUR           RDECOCUR        
##  Min.   :     -9   Length:47337       Length:47337       Length:47337      
##  1st Qu.:      0   Class1:labelled    Class1:labelled    Class1:labelled   
##  Median :      0   Class2:character   Class2:character   Class2:character  
##  Mean   :  81654   Mode  :character   Mode  :character   Mode  :character  
##  3rd Qu.: 120000                                                           
##  Max.   :8000000                                                           
##                                                                            
##    GDECOCUR           PDECOCUR           ADECOCUR            PONDIIO       
##  Length:47337       Length:47337       Length:47337       Min.   :    0.0  
##  Class1:labelled    Class1:labelled    Class1:labelled    1st Qu.:  155.0  
##  Class2:character   Class2:character   Class2:character   Median :  297.0  
##  Mode  :character   Mode  :character   Mode  :character   Mean   :  623.8  
##                                                           3rd Qu.:  621.0  
##                                                           Max.   :12689.0  
##                                                                            
##     TOT_P12             P47T             DECINDR            IDECINDR        
##  Min.   :     -9   Min.   :       -9   Length:47337       Length:47337      
##  1st Qu.:      0   1st Qu.:        0   Class1:labelled    Class1:labelled   
##  Median :      0   Median :    48000   Class2:character   Class2:character  
##  Mean   :   4879   Mean   :   120703   Mode  :character   Mode  :character  
##  3rd Qu.:      0   3rd Qu.:   180000                                        
##  Max.   :2000000   Max.   :101250000                                        
##                    NA's   :74                                               
##    RDECINDR           GDECINDR           PDECINDR           ADECINDR        
##  Length:47337       Length:47337       Length:47337       Length:47337      
##  Class1:labelled    Class1:labelled    Class1:labelled    Class1:labelled   
##  Class2:character   Class2:character   Class2:character   Class2:character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##      PONDII             V2_M              V3_M              V4_M          
##  Min.   :    0.0   Min.   :     -9   Min.   :     -9   Min.   :    -9.00  
##  1st Qu.:  147.0   1st Qu.:      0   1st Qu.:      0   1st Qu.:     0.00  
##  Median :  290.0   Median :      0   Median :      0   Median :     0.00  
##  Mean   :  623.8   Mean   :  25067   Mean   :    924   Mean   :    65.21  
##  3rd Qu.:  613.0   3rd Qu.:      0   3rd Qu.:      0   3rd Qu.:     0.00  
##  Max.   :11903.0   Max.   :4000000   Max.   :7000000   Max.   :246000.00  
##                                                                           
##       V5_M             V8_M                V9_M               V10_M        
##  Min.   :    -9   Min.   :     -9.0   Min.   :     -9.0   Min.   :     -9  
##  1st Qu.:     0   1st Qu.:      0.0   1st Qu.:      0.0   1st Qu.:      0  
##  Median :     0   Median :      0.0   Median :      0.0   Median :      0  
##  Mean   :  2741   Mean   :    962.6   Mean   :    202.7   Mean   :    725  
##  3rd Qu.:     0   3rd Qu.:      0.0   3rd Qu.:      0.0   3rd Qu.:      0  
##  Max.   :300000   Max.   :1200000.0   Max.   :2000000.0   Max.   :3000000  
##                                                                            
##      V11_M              V12_M             V18_M              V19_AM 
##  Min.   :    -9.0   Min.   :     -9   Min.   :      -9   Min.   :0  
##  1st Qu.:     0.0   1st Qu.:      0   1st Qu.:       0   1st Qu.:0  
##  Median :     0.0   Median :      0   Median :       0   Median :0  
##  Mean   :   433.5   Mean   :   2140   Mean   :    2246   Mean   :0  
##  3rd Qu.:     0.0   3rd Qu.:      0   3rd Qu.:       0   3rd Qu.:0  
##  Max.   :300000.0   Max.   :1468000   Max.   :99000000   Max.   :0  
##                                                                     
##      V21_M               T_VI                ITF               DECIFR         
##  Min.   :    -9.0   Min.   :       -9   Min.   :        0   Length:47337      
##  1st Qu.:     0.0   1st Qu.:        0   1st Qu.:    30000   Class1:labelled   
##  Median :     0.0   Median :        0   Median :   272000   Class2:character  
##  Mean   :   192.5   Mean   :    36009   Mean   :   339492   Mode  :character  
##  3rd Qu.:     0.0   3rd Qu.:    13000   3rd Qu.:   480000                     
##  Max.   :350000.0   Max.   :101250000   Max.   :101250000                     
##                                                                               
##    IDECIFR            RDECIFR            GDECIFR            PDECIFR         
##  Length:47337       Length:47337       Length:47337       Length:47337      
##  Class1:labelled    Class1:labelled    Class1:labelled    Class1:labelled   
##  Class2:character   Class2:character   Class2:character   Class2:character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##    ADECIFR               IPCF              DECCFR            IDECCFR         
##  Length:47337       Min.   :        0   Length:47337       Length:47337      
##  Class1:labelled    1st Qu.:    10000   Class1:labelled    Class1:labelled   
##  Class2:character   Median :    79600   Class2:character   Class2:character  
##  Mode  :character   Mean   :   109869   Mode  :character   Mode  :character  
##                     3rd Qu.:   143600                                        
##                     Max.   :101250000                                        
##                                                                              
##    RDECCFR            GDECCFR            PDECCFR            ADECCFR         
##  Length:47337       Length:47337       Length:47337       Length:47337      
##  Class1:labelled    Class1:labelled    Class1:labelled    Class1:labelled   
##  Class2:character   Class2:character   Class2:character   Class2:character  
##  Mode  :character   Mode  :character   Mode  :character   Mode  :character  
##                                                                             
##                                                                             
##                                                                             
##      PONDIH       
##  Min.   :    0.0  
##  1st Qu.:   53.0  
##  Median :  245.0  
##  Mean   :  623.8  
##  3rd Qu.:  549.0  
##  Max.   :16756.0  
## 
```

**Beneficio:** Facilita la interpretación de los datos sin necesidad de
consultar los códigos numéricos en el manual del INDEC.

# **Ejemplo de uso: Descargar datos de hogares de la EPH**

Si queremos obtener los datos de hogares del **4to trimestre de 2023**,
usamos:


``` r
library(eph)  # Asegurar que el paquete está cargado

eph_data_hogar <- get_microdata(year = 2023, trimester = 4, type = "hogar")

# Ver primeras filas de la base
dim(eph_data_hogar)
```

```
## [1] 16462    88
```

``` r
head(eph_data_hogar)
```

```
## # A tibble: 6 × 88
##   CODUSU    ANO4 TRIMESTRE NRO_HOGAR REALIZADA REGION MAS_500 AGLOMERADO PONDERA
##   <chr>    <int>     <int>     <int>     <int>  <int> <chr>        <int>   <int>
## 1 TQRMNOR…  2023         4         2         1     43 N               30     107
## 2 TQRMNOP…  2023         4         1         1     43 N               30     137
## 3 TQRMNOR…  2023         4         1         1     40 S               23     356
## 4 TQRMNOQ…  2023         4         2         1     40 S               23     299
## 5 TQRMNOR…  2023         4         1         1     40 S               23     221
## 6 TQRMNOS…  2023         4         1         1     40 S               23     446
## # ℹ 79 more variables: IV1 <int>, IV1_ESP <chr>, IV2 <int>, IV3 <int>,
## #   IV3_ESP <chr>, IV4 <int>, IV5 <int>, IV6 <int>, IV7 <int>, IV7_ESP <chr>,
## #   IV8 <int>, IV9 <int>, IV10 <int>, IV11 <int>, IV12_1 <int>, IV12_2 <int>,
## #   IV12_3 <int>, II1 <int>, II2 <int>, II3 <int>, II3_1 <int>, II4_1 <int>,
## #   II4_2 <int>, II4_3 <int>, II5 <int>, II5_1 <int>, II6 <int>, II6_1 <int>,
## #   II7 <int>, II7_ESP <chr>, II8 <int>, II8_ESP <chr>, II9 <int>, V1 <int>,
## #   V2 <int>, V21 <int>, V22 <int>, V3 <int>, V4 <int>, V5 <int>, V6 <int>, …
```

## Tipos de bases disponibles en `{eph}`

Cuando usás `get_microdata()`, podés elegir entre diferentes tipos de
bases de datos:

| **Tipo de base** | **Descripción**                       |
|------------------|---------------------------------------|
| "individual"     | Datos de cada persona encuestada.     |
| "hogar"          | Información de cada hogar encuestado. |
| "vivienda"       | Datos de las viviendas encuestadas.   |

# Parte 3: ¿Qué es el paquete `{tidyverse}`?

El paquete `{tidyverse}` es una colección de paquetes en R diseñada para
facilitar el procesamiento, manipulación, y visualización de datos de
manera eficiente y legible. Fue creado por Hadley Wickham y su equipo en
RStudio, y agrupa una serie de paquetes que comparten una filosofía
basada en:

-   **Sintaxis coherente y funcional**\
-   **Principios de "tidy data"** (datos organizados en un formato
    estructurado)\
-   **Uso de la tubería (`%>%`)** para encadenar funciones de manera
    clara\
-   **El tidyverse facilita el análisis de datos**, eliminando código
    redundante y promoviendo un flujo de trabajo intuitivo para quienes
    trabajan con ciencias sociales computacionales.

**Más información y documentación oficial:** [Tidyverse - R for Data
Science](https://www.tidyverse.org/)

## Instalación y carga de `{tidyverse}`


``` r
install.packages("tidyverse")  # Instala el paquete tidyverse
library(tidyverse)  # Carga todos los paquetes del tidyverse
```

# Paquetes incluidos en `{tidyverse}`

Si ustedes instalan tidyverse entonces no tienen que estar instalando
todos estos paquetes uno por uno.

| **Paquete**   | **Funcionalidad principal**            | **Funciones clave**                                                          |
|------------------|--------------------------|-----------------------------|
| **dplyr**     | Manipulación y transformación de datos | `filter()`, `select()`, `mutate()`, `group_by()`, `summarise()`, `arrange()` |
| **tidyr**     | Organización y estructuración de datos | `pivot_longer()`, `pivot_wider()`, `separate()`, `unite()`                   |
| **readr**     | Importación de archivos                | `read_csv()`, `read_delim()`, `write_csv()`                                  |
| **purrr**     | Programación funcional y listas        | `map()`, `map_df()`, `map_chr()`                                             |
| **tibble**    | Tablas mejoradas en R                  | `as_tibble()`, `tibble()`                                                    |
| **stringr**   | Manipulación de texto y caracteres     | `str_detect()`, `str_replace()`, `str_to_lower()`                            |
| **forcats**   | Manejo avanzado de factores            | `fct_reorder()`, `fct_lump()`, `fct_relevel()`                               |
| **lubridate** | Manipulación de fechas y tiempos       | `ymd()`, `mdy()`, `hms()`, `floor_date()`                                    |

En este taller, utilizaremos tidyverse en combinación con el paquete eph
para analizar bases de la Encuesta Permanente de Hogares (EPH), lo que
nos permitirá realizar transformaciones, cálculos y resúmenes sobre
variables clave del mercado de trabajo.

# `dplyr`: Manipulación de datos en R

El paquete **dplyr** de **tidyverse** es una herramienta fundamental
para la manipulación eficiente de datos en R. Permite realizar
operaciones como filtrado, selección, transformación, agrupación y
resumen de datos de manera intuitiva.

En este documento, aplicamos todas sus funciones clave sobre la
**Encuesta Permanente de Hogares (EPH)** utilizando el paquete `eph`.



## Cargar base de datos


``` r
# Obtener datos de la EPH (trimestre 3 de 2023)
eph_data <- get_microdata(year = 2023, trimester = 3, type = "individual")
head(eph_data)
```

```
## # A tibble: 6 × 177
##   CODUSU     ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500 AGLOMERADO
##   <chr>     <int>     <int>     <int>      <int> <int>  <int> <chr>        <int>
## 1 TQRMNOPS…  2023         3         1          5     1     41 N                8
## 2 TQSMNORW…  2023         3         1          1     1     41 N                8
## 3 TQSMNORW…  2023         3         1          3     1     41 N                8
## 4 TQSMNORW…  2023         3         1          2     1     41 N                8
## 5 TQRMNOSQ…  2023         3         1          1     1     43 N               36
## 6 TQRMNOSQ…  2023         3         1          2     1     43 N               36
## # ℹ 168 more variables: PONDERA <int>, CH03 <int>, CH04 <int>, CH05 <chr>,
## #   CH06 <int>, CH07 <int>, CH08 <int>, CH09 <int>, CH10 <int>, CH11 <int>,
## #   CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>, CH15_COD <int>, CH16 <int>,
## #   CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>, CAT_OCUP <int>,
## #   CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>, PP02C3 <int>,
## #   PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>, PP02C8 <int>,
## #   PP02E <int>, PP02H <int>, PP02I <int>, PP03C <int>, PP03D <int>, …
```

# Funciones clave de `dplyr`

-   🔍 **`filter()`** → Filtra filas según condiciones específicas.
    -   Ejemplo: `filter(data, edad > 30)`
-   📑 **`select()`** → Selecciona columnas específicas de un dataframe.
    -   Ejemplo: `select(data, nombre, salario)`
-   ✏️ **`mutate()`** → Crea o modifica columnas dentro del dataframe.
    -   Ejemplo: `mutate(data, salario_anual = salario * 12)`
-   📊 **`group_by()`** → Agrupa datos según una o varias variables.
    -   Ejemplo: `group_by(data, departamento)`
-   🧮 **`summarise()`** → Resume los datos, calculando estadísticas por
    grupo.
    -   Ejemplo:
        `summarise(data, salario_promedio = mean(salario, na.rm = TRUE))`
-   🔼 **`arrange()`** → Ordena los datos en orden ascendente o
    descendente.
    -   Ejemplo: `arrange(data, desc(salario))`
-   🔢 **`count()`** → Cuenta la cantidad de observaciones por grupo.
    -   Ejemplo: `count(data, departamento)`
-   🏷️ **`rename()`** → Cambia el nombre de una columna.
    -   Ejemplo: `rename(data, sueldo = salario)`
-   🚮 **`distinct()`** → Elimina duplicados y devuelve solo valores
    únicos.
    -   Ejemplo: `distinct(data, nombre)`
-   🎯 **`slice()`** → Selecciona filas específicas según su posición.
    -   Ejemplo: `slice(data, 1:10)`
-   📥 **`pull()`** → Extrae una sola columna en forma de vector.
    -   Ejemplo: `pull(data, nombre)`
-   🔀 **`relocate()`** → Cambia el orden de las columnas dentro del
    dataframe.
    -   Ejemplo: `relocate(data, salario, .before = nombre)`
-   🚧 **`transmute()`** → Crea nuevas columnas pero elimina las
    originales.
    -   Ejemplo: `transmute(data, salario_anual = salario * 12)`
-   📊 **`ggplot2()`** → Grafica toda la movida (lo veremos en otra
    clase)
    -   Ejemplo ggplot(data, aes(x = edad, y = salario)) + geom_point())

# **`filter()`**: Filtrar filas en un dataframe

La función **`filter()`** en `dplyr` se usa para **seleccionar filas**
de un dataframe que cumplen con una o varias condiciones. Es
especialmente útil en el análisis de datos de la **Encuesta Permanente
de Hogares (EPH)**.

## **Características clave**

-   Permite aplicar **condiciones lógicas** (`>`, `<`, `==`, `!=`, `>=`,
    `<=`).
-   Se pueden combinar **múltiples condiciones** con `&` (AND) o `|`
    (OR).
-   Filtra filas **sin modificar las columnas existentes**.
-   Compatible con **`group_by()`** para aplicar filtros dentro de
    grupos. (esto es dios)

### **Ejemplos prácticos con el paquete `EPH`**

# **Ejemplo 1: Filtrar personas mayores de 30**


``` r
#Gran San Juan
eph_gsj_ocupados <- eph_data %>%
  filter(AGLOMERADO == 27, ESTADO == 1, CH06 >= 25, CH06 <= 50)
dim(eph_gsj_ocupados)
```

```
## [1] 464 177
```

``` r
#Gran Mendoza
eph_gmza_ocupados <- eph_data %>%
  filter(AGLOMERADO == 10, ESTADO == 1, CH06 >= 25, CH06 <= 50)
dim(eph_gmza_ocupados)
```

```
## [1] 580 177
```

-   CH06 es la variable que representa la edad en la EPH.
-   Se seleccionan solo las filas donde CH06 \> 30 (personas mayores de
    30 años).
-   ¿Estaría copado verlo en tablas no? wait for it

# **Ejemplo 2 Filtrar con múltiples condiciones (AND &)**


``` r
#Gran San Juan
eph_gsj_ocupadosalto <- eph_data %>%
  filter(AGLOMERADO == 27, ESTADO == 1, CH06 >= 30 & P21 > 40000) 
dim(eph_gsj_ocupadosalto)
```

```
## [1] 458 177
```

``` r
#Gran Mendoza
eph_gmza_ocupadosalto <- eph_data %>%
  filter(AGLOMERADO == 10, ESTADO == 1, CH06 >= 30& P21 > 40000)
dim(eph_gmza_ocupadosalto)
```

```
## [1] 462 177
```

-   AGLOMREADO 27 y 10 (GSJ y Mendoza respectivamente)
-   ESTADO ==1 (Corresponde a ocupados)
-   CH06 \>= 30 (personas mayores de 30 años)
-   P21 \> 40000 (Ingresos mayores a 40k)
-   No muestro tablas pues no conocemos las funciones!

# **Ejemplo 3: Filtrar con múltiples condiciones (OR \|)**


``` r
#Gran San Juan
eph_gsj_ocupadosaltor <- eph_data %>%
  filter(AGLOMERADO == 27, ESTADO == 1, CH06 >= 30 | P21 > 40000) 
dim(eph_gsj_ocupadosaltor)
```

```
## [1] 662 177
```

``` r
#Gran Mendoza
eph_gmza_ocupadosaltor <- eph_data %>%
  filter(AGLOMERADO == 10, ESTADO == 1, CH06 >= 30 | P21 > 40000)
dim(eph_gmza_ocupadosaltor)
```

```
## [1] 800 177
```

-   Aca el filtro es para pesonas mayores a 30 o que perciban más de 40k

# **Ejemplo 4: Filtrar valores específicos con %in%**


``` r
#Gran San Juan
eph_gsj_ocupadosaltorin <- eph_data %>%
  filter(AGLOMERADO == 27, ESTADO %in% c(1, 2), CH06 >= 30) 
dim(eph_gsj_ocupadosaltorin)
```

```
## [1] 576 177
```

``` r
#Gran Mendoza
eph_gmza_ocupadosaltorin <- eph_data %>%
  filter(AGLOMERADO == 10, ESTADO %in% c(1, 2), CH06 >= 30)
dim(eph_gmza_ocupadosaltorin)
```

```
## [1] 726 177
```

-   En este caso se seleccionan personas ocupadas o desocupadas mayores
    a 30 años, comando ideal, por ejemplo, para calcular la PEA

# **`select()`: Selección de columnas en un dataframe**

La función **`select()`** en `dplyr` se usa para **elegir columnas
específicas** de un dataframe. Es útil para **reducir la cantidad de
variables** y enfocarse en las más relevantes para el análisis.

## **Características clave**

-   Permite **seleccionar columnas** por su nombre.
-   Se pueden **excluir columnas** usando `-` antes del nombre.
-   Se pueden usar **rangos de columnas** o patrones con
    `starts_with()`, `ends_with()`, `contains()`.
-   No modifica los datos, solo selecciona variables relevantes.

## **Ejemplos prácticos con el paquete `EPH`**

# **Ejemplo 1. Seleccionar columnas específicas**


``` r
eph_reducida <- eph_data %>%
  select(CH04, CH06, P47T, PP3E_TOT) %>%
  rename(
    sexo = CH04,
    edad = CH06,
    ingreso_total = P47T,
    horas_trabajadas = PP3E_TOT
  )
head(eph_reducida)
```

```
## # A tibble: 6 × 4
##    sexo  edad ingreso_total horas_trabajadas
##   <int> <int>         <int>            <int>
## 1     2    10             0               NA
## 2     1    51            -9               16
## 3     2    17             0               NA
## 4     2    51             0               NA
## 5     2    31             0               NA
## 6     1    29        200000               60
```

Se seleccionan las variables: - **CH03**: Relación de parentesco con
jefe/a de hogar\
- **CH04**: Sexo\
- **CH06**: Edad\
- **CAT_OCUP**: Categoría ocupacional\
- **P21**: Ingreso total individual

# **Ejemplo 2. Excluir columnas específicas**


``` r
eph_dataS <- select(eph_data, -P47T)
dim(eph_data)
```

```
## [1] 48335   177
```

``` r
dim(eph_dataS)
```

```
## [1] 48335   176
```

Eliminamos P47T porque nos cae mal

# **Ejemplo 3 Seleccionar un rango de columnas**


``` r
eph_rango <- select(eph_data, CH04:CH06)
head(eph_rango)
```

```
## # A tibble: 6 × 3
##    CH04 CH05        CH06
##   <int> <chr>      <int>
## 1     2 02/10/2012    10
## 2     1 01/01/1900    51
## 3     2 20/03/2006    17
## 4     2 01/01/1900    51
## 5     2 24/04/1992    31
## 6     1 16/03/1994    29
```

Seleccionamos variables desde CH04 (edad) hasta CH06 (sexo)

# **Ejemplo 4 Seleccionar columnas que empiezan con un prefijo**


``` r
eph_ch <- select(eph_data, starts_with("CH"))
head(eph_ch)
```

```
## # A tibble: 6 × 16
##    CH03  CH04 CH05    CH06  CH07  CH08  CH09  CH10  CH11  CH12  CH13 CH14   CH15
##   <int> <int> <chr>  <int> <int> <int> <int> <int> <int> <int> <int> <chr> <int>
## 1     3     2 02/10…    10     5     1     1     1     1     2     2 "04"      1
## 2     1     1 01/01…    51     2     1     1     2     0     6     1 ""        2
## 3     3     2 20/03…    17     5     1     1     1     1     4     2 "04"      1
## 4     2     2 01/01…    51     2     1     1     2     0     2     1 ""        1
## 5     1     2 24/04…    31     1     4     1     2     0     3     1 ""        1
## 6     2     1 16/03…    29     1     4     1     2     0     5     1 ""        1
## # ℹ 3 more variables: CH15_COD <int>, CH16 <int>, CH16_COD <int>
```

Se seleccionan todas las columnas cuyos nombres comienzan con "CH"
(variables de características del hogar).

# **Ejemplo 5 Seleccionar columnas que contienen una palabra clave**


``` r
eph_ocup <- select(eph_data, contains("COD"))
head(eph_ocup)
```

```
## # A tibble: 6 × 7
##   CODUSU               CH15_COD CH16_COD PP04B_COD PP04D_COD PP11B_COD PP11D_COD
##   <chr>                   <int>    <int> <chr>     <chr>     <chr>     <chr>    
## 1 TQRMNOPSSHJOKSCDEFO…       NA       NA ""        ""        ""        ""       
## 2 TQSMNORWTHJMKTCDEFO…       NA       NA "9409"    "10312"   ""        ""       
## 3 TQSMNORWTHJMKTCDEFO…       NA       NA ""        ""        ""        ""       
## 4 TQSMNORWTHJMKTCDEFO…       NA       NA ""        ""        ""        ""       
## 5 TQRMNOSQQHMMKUCDEIM…       NA       NA ""        ""        ""        ""       
## 6 TQRMNOSQQHMMKUCDEIM…       NA       NA "4904"    "34123"   ""        ""
```

Se seleccionan todas las columnas que contienen "COD", por ejemplo
PP04B_COD que muestra código ocupacional donde cada caracter implica una
característica de la ocupación

# **Ejemplo 6: Renombrar columnas al seleccionarlas**


``` r
eph_ren <- select(eph_data, edad= CH06, sexo = CH04)
head(eph_ren)
```

```
## # A tibble: 6 × 2
##    edad  sexo
##   <int> <int>
## 1    10     2
## 2    51     1
## 3    17     2
## 4    51     2
## 5    31     2
## 6    29     1
```

Ahora las columnas tienen nombres más descriptivos:

-   **CH06** → `edad`\
-   **CH04** → `sexo`\
-   **P21** → `ingresos`

# **`mutate()`: Crear y modificar columnas en un dataframe**

La función **`mutate()`** en `dplyr` permite **crear nuevas variables**
o **modificar las existentes** en un dataframe. Es una herramienta clave
para transformar datos en la **Encuesta Permanente de Hogares (EPH)**.

## **Características clave**

-   Crea **nuevas columnas** basadas en cálculos o condiciones.
-   Modifica **variables existentes** sin necesidad de crear un nuevo
    dataframe.
-   Permite usar **funciones matemáticas y lógicas** para transformar
    datos.
-   Compatible con **`group_by()`** para realizar cálculos dentro de
    grupos.

## 📊 \*\*Ejemplos prácticos con el paquete `EPH`

# **Ejemplo 1: Crear una nueva variable de ingresos anuales**


``` r
eph_data <- eph_data %>%
  mutate(ingreso_anual = P47T * 12)
head(select(eph_data, P21, ingreso_anual))
```

```
## # A tibble: 6 × 2
##      P21 ingreso_anual
##    <int>         <dbl>
## 1      0             0
## 2     -9          -108
## 3      0             0
## 4      0             0
## 5      0             0
## 6 200000       2400000
```

Se crea la variable ingreso_anual, multiplicando el ingreso mensual
(P21) por 12.

# **Ejemplo 2: Crear variable categórica de edad**


``` r
# Crear una nueva columna que clasifica a las personas en jóvenes y adultos

eph_data <- mutate(eph_data, grupo_edad = ifelse(CH06 < 30, "Joven", "Adulto"))
head(select(eph_data, CH06, grupo_edad))
```

```
## # A tibble: 6 × 2
##    CH06 grupo_edad
##   <int> <chr>     
## 1    10 Joven     
## 2    51 Adulto    
## 3    17 Joven     
## 4    51 Adulto    
## 5    31 Adulto    
## 6    29 Joven
```

Se genera la variable grupo_edad, asignando "Joven" a personas menores
de 30 años y "Adulto" al resto.

# **Ejemplo 3: Modificar una variable existente (transformar ingresos a miles de pesos)**


``` r
# Crear una nueva columna que clasifica a las personas en jóvenes y adultos

eph_data <- mutate(eph_data, P21=P21/1000)
head(select(eph_data, P21))
```

```
## # A tibble: 6 × 1
##       P21
##     <dbl>
## 1   0    
## 2  -0.009
## 3   0    
## 4   0    
## 5   0    
## 6 200
```

Se transforma P21 para que el ingreso quede expresado en miles de pesos.

# **Ejemplo 4: Calcular el ingreso per cápita del hogar**


``` r
# Crear una variable de ingreso per cápita dividiendo el ingreso total del hogar por la cantidad de miembros

eph_data <- mutate(eph_data, ingreso_per_ocupacion = (ITF / PP03D))

head(select(eph_data, ITF, PP03D, ingreso_per_ocupacion))
```

```
## # A tibble: 6 × 3
##      ITF PP03D ingreso_per_ocupacion
##    <int> <int>                 <dbl>
## 1 120000    NA                    NA
## 2      0     0                   NaN
## 3      0    NA                    NA
## 4      0    NA                    NA
## 5 200000    NA                    NA
## 6 200000     0                   Inf
```

Se transforma P21 para que el ingreso quede dividido por la cantidad de
ocupaciones.

# **Ejemplo 5: Crear una nueva variable con case_when()**


``` r
# Crear una variable de categoría socioeconómica en base al ingreso
eph_data <- mutate(eph_data, categoria_ingreso = case_when(
  P21 < 50000 ~ "Bajo",
  P21 >= 50000 & P21 < 150000 ~ "Medio",
  P21 >= 150000 ~ "Alto"
))

head(select(eph_data, P21, categoria_ingreso))
```

```
## # A tibble: 6 × 2
##       P21 categoria_ingreso
##     <dbl> <chr>            
## 1   0     Bajo             
## 2  -0.009 Bajo             
## 3   0     Bajo             
## 4   0     Bajo             
## 5   0     Bajo             
## 6 200     Bajo
```

Se usa `case_when()` para asignar categorías de ingreso: - **Menos de
50,000** → `"Bajo"`\
- **Entre 50,000 y 150,000** → `"Medio"`\
- **Más de 150,000** → `"Alto"`

# **`arrange()`: Ordenar filas en un dataframe**

La función **`arrange()`** en `dplyr` permite **ordenar un dataframe**
en función de una o varias columnas.\
Es especialmente útil en el análisis de la **Encuesta Permanente de
Hogares (EPH)** para visualizar los datos en orden creciente o
decreciente.

## **Características clave**

-   Ordena los datos **en orden ascendente** por defecto.
-   Para **orden descendente**, se usa `desc()`.
-   Se pueden ordenar los datos por **múltiples columnas**.
-   Compatible con **`group_by()`** para ordenar dentro de grupos.

## **Ejemplos prácticos con el paquete `EPH`**

# **Ejemplo 1: Ordenar por edad en orden ascendente**


``` r
# Ordenar las filas según la edad en orden ascendente
eph_data <- arrange(eph_data, CH06)

# Ver las primeras filas
head(select(eph_data, CH03, CH04, CH06))
```

```
## # A tibble: 6 × 3
##    CH03  CH04  CH06
##   <int> <int> <int>
## 1     3     2    -1
## 2     5     2    -1
## 3     3     2    -1
## 4     3     1    -1
## 5     9     1    -1
## 6     3     2    -1
```

Se ordena el dataframe por la variable CH06 (edad) en orden creciente.

# **Ejemplo 2: Ordenar por ingresos en orden descendente**


``` r
# Ordenar las filas según la edad en orden ascendente
eph_datao <- arrange(eph_data, desc(CH06))

# Ver las primeras filas
head(select(eph_datao, CH03, CH04, CH06))
```

```
## # A tibble: 6 × 3
##    CH03  CH04  CH06
##   <int> <int> <int>
## 1     6     2   108
## 2     6     2   102
## 3     6     2   100
## 4     1     1    99
## 5     6     2    99
## 6     1     1    99
```

Se ordena el dataframe por la variable CH06 (edad); desc(CH06) de mayor
a menor.

# **Ejemplo 4: ordenar por categoría ocupacional y dentro de cada categoría por ingresos**


``` r
# Ordenar las filas según la edad en orden ascendente
eph_dataord <- arrange(eph_data, CAT_OCUP, desc(P21))

# Ver las primeras filas
head(select(eph_dataord, CH03, CH04, CH06))
```

```
## # A tibble: 6 × 3
##    CH03  CH04  CH06
##   <int> <int> <int>
## 1     3     2    -1
## 2     5     2    -1
## 3     3     2    -1
## 4     3     1    -1
## 5     9     1    -1
## 6     3     2    -1
```

Se ordena el dataframe por la variable CH06 (edad); desc(CH06) de mayor
a menor.

# **`group_by()`: Agrupar datos en un dataframe**

La función **`group_by()`** en `dplyr` permite **agrupar filas según una
o varias variables**, facilitando el cálculo de estadísticas dentro de
cada grupo.\
Es clave para segmentar datos en la **Encuesta Permanente de Hogares
(EPH)** y analizar diferentes categorías poblacionales.

## **Características clave**

-   Agrupa los datos **sin modificarlos** directamente.
-   Se usa en combinación con **`summarise()`** para calcular
    estadísticas dentro de cada grupo.
-   Se pueden agrupar los datos por **una o más variables**.
-   Compatible con otras funciones de `dplyr`, como `mutate()` y
    `arrange()`.

# **Ejemplo 1: Agrupar por género y calcular el salario promedio**


``` r
data_gen <- eph_data %>%
  group_by(CH04) %>%
  summarise(salario_promedio = mean(P21, na.rm = TRUE))

# Ver resultado
print(data_gen)
```

```
## # A tibble: 2 × 2
##    CH04 salario_promedio
##   <int>            <dbl>
## 1     1             75.7
## 2     2             44.9
```

# **Ejemplo 2: Agrupar por género y contar cuántas personas hay en cada grupo**


``` r
data_genc <- eph_data %>%
  group_by(CH04) %>%
  summarise(cantidad = n())

# Ver resultado
print(data_genc)
```

```
## # A tibble: 2 × 2
##    CH04 cantidad
##   <int>    <int>
## 1     1    23161
## 2     2    25174
```

Contamos cuántas personas hay en cada categoría (1 = varón, 2 = mujer).

# **Ejemplo 3: Agrupar por región y calcular el ingreso per cápita promedio**


``` r
data_reg <- eph_data %>%
  group_by(AGLOMERADO) %>%
  summarise(promedio_IPCF = mean(IPCF, na.rm = TRUE))

# Ver resultado
print(data_reg)
```

```
## # A tibble: 32 × 2
##    AGLOMERADO promedio_IPCF
##         <int>         <dbl>
##  1          2        67298.
##  2          3        77973.
##  3          4        81027.
##  4          5        53217.
##  5          6        74682.
##  6          7        61819.
##  7          8        49492.
##  8          9       135385.
##  9         10        74038.
## 10         12        99132.
## # ℹ 22 more rows
```

Contamos cuántas personas hay en cada categoría (1 = varón, 2 = mujer).

# **Ejemplo 3: Agrupar por región y calcular el ingreso per cápita promedio**


``` r
data_reg <- eph_data %>%
  group_by(AGLOMERADO) %>%
  summarise(promedio_IPCF = mean(IPCF, na.rm = TRUE))

# Ver resultado
print(data_reg)
```

```
## # A tibble: 32 × 2
##    AGLOMERADO promedio_IPCF
##         <int>         <dbl>
##  1          2        67298.
##  2          3        77973.
##  3          4        81027.
##  4          5        53217.
##  5          6        74682.
##  6          7        61819.
##  7          8        49492.
##  8          9       135385.
##  9         10        74038.
## 10         12        99132.
## # ℹ 22 more rows
```

Se cuenta cuántas personas hay en cada categoría (1 = varón, 2 = mujer).

# **`summarise()`: Calcular estadísticas por grupo en un dataframe**

La función **`summarise()`** en `dplyr` permite **resumir datos**
calculando estadísticas dentro de cada grupo definido con `group_by()`.\
Es esencial para obtener promedios, medianas, sumas y otros indicadores
clave en la **Encuesta Permanente de Hogares (EPH)**.

## **Características clave**

-   Se usa con **`group_by()`** para calcular estadísticas por grupo.
-   Puede generar **varias estadísticas en una misma operación**.
-   Se pueden usar funciones como **`mean()`**, **`median()`**,
    **`sum()`**, **`min()`**, **`max()`**, entre otras.
-   Permite incluir múltiples variables resumen.

## **Ejemplos prácticos con el paquete `EPH`**

# **Ejemplo 1: Calcular el salario promedio por categoría ocupacional**


``` r
data_summarise <- eph_data %>%
  group_by(CAT_OCUP) %>%
  summarise(salario_promedio = mean(P21, na.rm = TRUE))

# Ver resultado
print(data_summarise)
```

```
## # A tibble: 6 × 2
##   CAT_OCUP salario_promedio
##      <int>            <dbl>
## 1        0              0  
## 2        1            164. 
## 3        2             88.5
## 4        3            138. 
## 5        4              0  
## 6        9              0
```

Se agrupan los datos según categoría ocupacional (CAT_OCUP) y se calcula
el salario promedio (P21).

# **Ejemplo 2: Calcular la mediana de ingresos y el tamaño de cada grupo**


``` r
# Aca vamos a agregar otras cositas porque los ejemplos estan muy chotos.
## 1. Excluir valores perdidos y categorías específicas
data_filtered <- eph_data %>%
  filter(!is.na(P21), #Sacamos los datos perdidos (is.na)
         CAT_OCUP %in% c(1, 2, 3)) #Les decimos que nos quedamos solo con los valores 1, 2 y 3 de cat_ocup

# Calcular la mediana de ingresos y el total de personas ponderado por FACTOR_EXP

data_summarise <- data_filtered %>%
  group_by(CAT_OCUP) %>%
  summarise(
    mediana_ingreso = median(rep(P21, PONDIIO), na.rm = TRUE),
    total_personas = sum(PONDIIO, na.rm = TRUE)
  ) %>%
  mutate(CAT_OCUP = recode(CAT_OCUP, `1` = "Patron", `2` = "Cuentapropia", `3` = "Obrero"))

# Ver resultado
print(data_summarise)
```

```
## # A tibble: 3 × 3
##   CAT_OCUP     mediana_ingreso total_personas
##   <chr>                  <dbl>          <int>
## 1 Patron                   200         436704
## 2 Cuentapropia             100        3038323
## 3 Obrero                   150       10468215
```

Se agrupan los datos según categoría ocupacional (CAT_OCUP) y se calcula
el salario promedio (P21).

# **Ejemplo 3: Calcular el ingreso promedio y la edad media por aglomerado**


``` r
# Calcular el ingreso y la edad promedio por aglomerado
data_summarise <- eph_data %>%
  group_by(AGLOMERADO) %>%
  summarise(
    ingreso_promedio = mean(P21, na.rm = TRUE),
    edad_promedio = mean(CH06, na.rm = TRUE)
  )

# Ver resultado
print(data_summarise)
```

```
## # A tibble: 32 × 3
##    AGLOMERADO ingreso_promedio edad_promedio
##         <int>            <dbl>         <dbl>
##  1          2             53.0          35.8
##  2          3             60.5          38.0
##  3          4             62.5          37.4
##  4          5             40.6          36.6
##  5          6             53.2          36.8
##  6          7             45.2          35.7
##  7          8             35.3          34.8
##  8          9             98.5          34.1
##  9         10             51.8          36.9
## 10         12             57.9          34.4
## # ℹ 22 more rows
```

Se calcula el ingreso promedio (P21) y la edad promedio (CH06) en cada
aglomerado (AGLOMERADO).

# **Ejemplo 4: Calcular el porcentaje de asalariados registrados y no registrados**


``` r
# Calcular la proporción de asalariados registrados y no registrados
mt1 <- eph_data %>% 
  filter(AGLOMERADO == 27) %>% 
  summarise(
    pob           = sum(PONDERA),
    PEA           = sum(PONDERA[ESTADO %in% c(1, 2)]),
    ocup          = sum(PONDERA[ESTADO == 1]),
    desocup       = sum(PONDERA[ESTADO == 2]))%>% 
  data.frame() %>% 
  setNames(c("Poblacion Total", "PEA", "Población Ocupada", "Población Desocupada")) %>% 
  gather(key = "Variable", value = "Valor")

print(mt1)
```

```
##               Variable  Valor
## 1      Poblacion Total 550628
## 2                  PEA 239906
## 3    Población Ocupada 229289
## 4 Población Desocupada  10617
```

Se calcula la cantidad de población total, población económicamente
activa, población ocupada y desocupada en el aglomerado 27 a partir de
la variable ESTADO.

# **`count()`: Contar observaciones en un grupo**

La función **`count()`** en `dplyr` permite **contar el número de
filas** en cada grupo de una variable.\
Es útil para conocer la distribución de categorías en la **Encuesta
Permanente de Hogares (EPH)**.

## **Características clave**

-   Cuenta la cantidad de filas dentro de cada categoría de una
    variable.
-   Puede utilizarse con **`sort = TRUE`** para ordenar los resultados
    de mayor a menor.
-   Puede combinarse con **`group_by()`** y **`summarise()`** para mayor
    flexibilidad.

# **Ejemplo 1: Contar la cantidad de personas por categoría ocupacional**


``` r
conteo_ocupacional <- eph_data %>% count(CAT_OCUP)
print(conteo_ocupacional)
```

```
## # A tibble: 6 × 2
##   CAT_OCUP     n
##      <int> <int>
## 1        0 25844
## 2        1   766
## 3        2  4673
## 4        3 16968
## 5        4    82
## 6        9     2
```

-   Se cuenta la cantidad de personas en cada categoría ocupacional
    (CAT_OCUP).
-   Se usa sort = TRUE para ordenar los resultados de mayor a menor.

# **`rename()`: Cambiar el nombre de columnas en un dataframe**

La función **`rename()`** en `dplyr` permite **cambiar el nombre de una
o varias columnas** en un dataframe.\
Es útil para hacer que los nombres de las variables sean más claros en
la **EPH**.

## Características clave

-   Permite renombrar una o varias columnas al mismo tiempo.
-   Mantiene todas las columnas del dataframe sin eliminarlas ni
    modificarlas.
-   Se usa con la sintaxis `rename(nuevo_nombre = nombre_original)`.

# **Ejemplo 1: Renombrar variables en la EPH**


``` r
data_renamed <- eph_data %>%
  rename(
    edad = CH06,
    sexo = CH04,
    ingreso_total = P21
  )

head(data_renamed)
```

```
## # A tibble: 6 × 181
##   CODUSU     ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500 AGLOMERADO
##   <chr>     <int>     <int>     <int>      <int> <int>  <int> <chr>        <int>
## 1 TQRMNOQQ…  2023         3         1          4     0     44 N               91
## 2 TQRMNOPP…  2023         3         1         12     0     43 N               14
## 3 TQRMNOQX…  2023         3         1          4     0      1 S               33
## 4 TQRMNORU…  2023         3         1          3     0     40 S               23
## 5 TQRMNORW…  2023         3         1          6     0     41 N               12
## 6 TQRMNOQS…  2023         3         1          5     0     44 N                9
## # ℹ 172 more variables: PONDERA <int>, CH03 <int>, sexo <int>, CH05 <chr>,
## #   edad <int>, CH07 <int>, CH08 <int>, CH09 <int>, CH10 <int>, CH11 <int>,
## #   CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>, CH15_COD <int>, CH16 <int>,
## #   CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>, CAT_OCUP <int>,
## #   CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>, PP02C3 <int>,
## #   PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>, PP02C8 <int>,
## #   PP02E <int>, PP02H <int>, PP02I <int>, PP03C <int>, PP03D <int>, …
```

#Para cerrar esta parte. Vamos con las funciones que quedan, que no
usamos mucho pero están ahí

# **`distinct()`: Eliminar duplicados**

Elimina filas duplicadas basadas en una o varias columnas.


``` r
# Eliminar duplicados en la combinación de sexo y edad
eph_data_distinct <- eph_data %>%
  distinct(CH04, CH06, .keep_all = TRUE)

head(eph_data_distinct)
```

```
## # A tibble: 6 × 181
##   CODUSU     ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500 AGLOMERADO
##   <chr>     <int>     <int>     <int>      <int> <int>  <int> <chr>        <int>
## 1 TQRMNOQQ…  2023         3         1          4     0     44 N               91
## 2 TQRMNORU…  2023         3         1          3     0     40 S               23
## 3 TQRMNORP…  2023         3         1          5     0     43 N               36
## 4 TQRMNOPX…  2023         3         1          8     0     44 N                9
## 5 TQSMNOQV…  2023         3         1          3     0     43 N               14
## 6 TQRMNOPS…  2023         3         1          5     0     43 N               36
## # ℹ 172 more variables: PONDERA <int>, CH03 <int>, CH04 <int>, CH05 <chr>,
## #   CH06 <int>, CH07 <int>, CH08 <int>, CH09 <int>, CH10 <int>, CH11 <int>,
## #   CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>, CH15_COD <int>, CH16 <int>,
## #   CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>, CAT_OCUP <int>,
## #   CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>, PP02C3 <int>,
## #   PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>, PP02C8 <int>,
## #   PP02E <int>, PP02H <int>, PP02I <int>, PP03C <int>, PP03D <int>, …
```

Se eliminan registros duplicados con la misma combinación de sexo (CH04)
y edad (CH06), manteniendo las demás columnas.

# **`slice()`: Seleccionar filas por posición**

Extrae filas específicas del dataframe según su posición.


``` r
eph_data_slice <- eph_data %>%
  slice(1:10)

head(eph_data_slice)
```

```
## # A tibble: 6 × 181
##   CODUSU     ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500 AGLOMERADO
##   <chr>     <int>     <int>     <int>      <int> <int>  <int> <chr>        <int>
## 1 TQRMNOQQ…  2023         3         1          4     0     44 N               91
## 2 TQRMNOPP…  2023         3         1         12     0     43 N               14
## 3 TQRMNOQX…  2023         3         1          4     0      1 S               33
## 4 TQRMNORU…  2023         3         1          3     0     40 S               23
## 5 TQRMNORW…  2023         3         1          6     0     41 N               12
## 6 TQRMNOQS…  2023         3         1          5     0     44 N                9
## # ℹ 172 more variables: PONDERA <int>, CH03 <int>, CH04 <int>, CH05 <chr>,
## #   CH06 <int>, CH07 <int>, CH08 <int>, CH09 <int>, CH10 <int>, CH11 <int>,
## #   CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>, CH15_COD <int>, CH16 <int>,
## #   CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>, CAT_OCUP <int>,
## #   CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>, PP02C3 <int>,
## #   PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>, PP02C8 <int>,
## #   PP02E <int>, PP02H <int>, PP02I <int>, PP03C <int>, PP03D <int>, …
```

Extrae las primeras 10 filas del dataframe.

# **`pull()`: Extraer una columna como vector**

Devuelve una única columna en formato vector, útil para cálculos o
gráficos.


``` r
ingresos_vector <- eph_data %>%
  pull(P21)

head(ingresos_vector)
```

```
## [1] 0 0 0 0 0 0
```

Extrae la columna P21 (ingreso total individual) como vector.

# **`relocate()`: Reordenar columnas**

Cambia la posición de columnas dentro del dataframe.


``` r
# Mover la columna de ingresos al inicio
eph_data_relocate <- eph_data %>%
  relocate(P21, .before = everything())

head(eph_data_relocate)
```

```
## # A tibble: 6 × 181
##     P21 CODUSU          ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500
##   <dbl> <chr>          <int>     <int>     <int>      <int> <int>  <int> <chr>  
## 1     0 TQRMNOQQVHLML…  2023         3         1          4     0     44 N      
## 2     0 TQRMNOPPWHJMK…  2023         3         1         12     0     43 N      
## 3     0 TQRMNOQXXHJML…  2023         3         1          4     0      1 S      
## 4     0 TQRMNORUSHMML…  2023         3         1          3     0     40 S      
## 5     0 TQRMNORWSHKMK…  2023         3         1          6     0     41 N      
## 6     0 TQRMNOQSQHMKK…  2023         3         1          5     0     44 N      
## # ℹ 172 more variables: AGLOMERADO <int>, PONDERA <int>, CH03 <int>,
## #   CH04 <int>, CH05 <chr>, CH06 <int>, CH07 <int>, CH08 <int>, CH09 <int>,
## #   CH10 <int>, CH11 <int>, CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>,
## #   CH15_COD <int>, CH16 <int>, CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>,
## #   CAT_OCUP <int>, CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>,
## #   PP02C3 <int>, PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>,
## #   PP02C8 <int>, PP02E <int>, PP02H <int>, PP02I <int>, PP03C <int>, …
```

Mueve P21 (ingreso total individual) al inicio del dataframe.

# **`transmute()`: Crear nuevas columnas y eliminar las originales**

Cambia la posición de columnas dentro del dataframe.


``` r
# Crear ingreso anual y eliminar P21
eph_data_transmute <- eph_data %>%
  transmute(ingreso_anual = P21 * 12)

head(eph_data_transmute)
```

```
## # A tibble: 6 × 1
##   ingreso_anual
##           <dbl>
## 1             0
## 2             0
## 3             0
## 4             0
## 5             0
## 6             0
```

Se crea ingreso_anual (multiplicando P21 por 12) y se elimina P21.

# **Ejercicio Integrador**

Supongamos que queremos:

1.  Filtrar personas ocupadas en Gran San Juan mayores de 25 años.
2.  Seleccionar variables clave y calcular el ingreso por hora.
3.  Agrupar por sexo y calcular el promedio y mediana de ingreso.
4.  Ordenar el resultado por promedio de ingreso.


``` r
resumen_final <- eph_data %>%
  filter(AGLOMERADO == 27, ESTADO == 1, CH06 > 25) %>%
  select(CH04, CH06, P47T, PP3E_TOT) %>%
  rename(
    sexo = CH04,
    edad = CH06,
    ingreso_total = P47T,
    horas_trabajadas = PP3E_TOT
  ) %>%
  mutate(ingreso_hora = ingreso_total / horas_trabajadas) %>%
  group_by(sexo) %>%
  summarise(
    promedio_ingreso = mean(ingreso_total, na.rm = TRUE),
    mediana_ingreso = median(ingreso_total, na.rm = TRUE)
  ) %>%
  arrange(desc(promedio_ingreso))

print(resumen_final)
```

```
## # A tibble: 2 × 3
##    sexo promedio_ingreso mediana_ingreso
##   <int>            <dbl>           <dbl>
## 1     1          195951.          160000
## 2     2          153610.          127500
```

# Entonces dplyr

El paquete **dplyr** simplifica la manipulación de datos en **R**,
especialmente cuando trabajamos con bases complejas como la **EPH**.
Utilizando funciones como `filter()`, `select()`, `mutate()`,
`group_by()`, y `summarise()`, podemos realizar análisis avanzados de
manera eficiente y legible.

# Volvemos a los paquetes incluidos en `{tidyverse}`

Si ustedes instalan tidyverse entonces no tienen que estar instalando
todos estos paquetes uno por uno.

| **Paquete**   | **Funcionalidad principal**            | **Funciones clave**                                                          |
|------------------|--------------------------|-----------------------------|
| **dplyr**     | Manipulación y transformación de datos | `filter()`, `select()`, `mutate()`, `group_by()`, `summarise()`, `arrange()` |
| **tidyr**     | Organización y estructuración de datos | `pivot_longer()`, `pivot_wider()`, `separate()`, `unite()`                   |
| **readr**     | Importación de archivos                | `read_csv()`, `read_delim()`, `write_csv()`                                  |
| **purrr**     | Programación funcional y listas        | `map()`, `map_df()`, `map_chr()`                                             |
| **tibble**    | Tablas mejoradas en R                  | `as_tibble()`, `tibble()`                                                    |
| **stringr**   | Manipulación de texto y caracteres     | `str_detect()`, `str_replace()`, `str_to_lower()`                            |
| **forcats**   | Manejo avanzado de factores            | `fct_reorder()`, `fct_lump()`, `fct_relevel()`                               |
| **lubridate** | Manipulación de fechas y tiempos       | `ymd()`, `mdy()`, `hms()`, `floor_date()`                                    |

En este taller, utilizaremos tidyverse en combinación con el paquete eph
para analizar bases de la Encuesta Permanente de Hogares (EPH), lo que
nos permitirá realizar transformaciones, cálculos y resúmenes sobre
variables clave del mercado de trabajo.

# `tidyr`: Organización y estructuración de datos

El paquete `tidyr` forma parte del ecosistema `tidyverse` y se centra en
la transformación de datos para que sean **ordenados** ("tidy"). Esto
implica estructurar los datos de modo que cada columna represente una
variable, cada fila una observación y cada celda un valor.

## Características principales de `tidyr`

1.  **Transformación de datos a formato ordenado ("tidy data")**
    -   Cada columna representa una variable.\
    -   Cada fila es una observación.\
    -   Cada celda contiene un solo valor.
2.  **Facilidad para convertir entre formatos ancho y largo**
    -   Usa `pivot_longer()` para transformar datos de **formato ancho**
        a **largo**.\
    -   Usa `pivot_wider()` para transformar datos de **formato largo**
        a **ancho**.
3.  **Herramientas para manejar y limpiar datos**
    -   `drop_na()`: Elimina filas con valores faltantes.\
    -   `fill()`: Rellena valores `NA` con el dato más cercano.\
    -   `replace_na()`: Reemplaza valores faltantes con un valor
        específico.
4.  **Separación y combinación de columnas**
    -   `separate()`: Divide una columna en múltiples columnas usando un
        separador.\
    -   `unite()`: Une varias columnas en una sola con un delimitador
        personalizado.
5.  **Compatibilidad con el ecosistema `tidyverse`**
    -   Funciona de manera fluida con `dplyr`, `ggplot2`, `readr` y
        otros paquetes de `tidyverse`.\
    -   Usa sintaxis basada en tuberías (`%>%` o `|>`).
6.  **Mejora la eficiencia en la manipulación de datos**
    -   Permite realizar transformaciones con menos código y de forma
        más legible.\
    -   Optimiza la manipulación de bases de datos grandes en R.

## Vamos con los ejemplos

# **Ejemplo 1: `pivot_longer()` - Convertir columnas en filas**

Esta función **transforma datos de formato ancho a formato largo**, útil
para normalizar bases de datos.


``` r
# Crear ingreso anual y eliminar P21
tabla_lon1 <- eph_data %>% 
  summarise(pob                 = sum(PONDERA),
            ocup                  = sum(PONDERA[ESTADO == 1]),
            desocup               = sum(PONDERA[ESTADO == 2]),
            PEA                       = ocup + desocup,
            'Tasa de Actividad'               = round(PEA/pob *100, 1),
            'Tasa de Empleo'                  = round(ocup/pob *100, 1),
            'Tasa de Desocupación'            = round(desocup/PEA *100, 1))

print (tabla_lon1)
```

```
## # A tibble: 1 × 7
##        pob     ocup desocup      PEA `Tasa de Actividad` `Tasa de Empleo`
##      <int>    <int>   <int>    <int>               <dbl>            <dbl>
## 1 29463819 13396202  813661 14209863                48.2             45.5
## # ℹ 1 more variable: `Tasa de Desocupación` <dbl>
```

Inleible, no?


``` r
tabla_lon2 <- eph_data %>% 
  summarise(pob                 = sum(PONDERA),
            ocup                  = sum(PONDERA[ESTADO == 1]),
            desocup               = sum(PONDERA[ESTADO == 2]),
            PEA                       = ocup + desocup,
            'Tasa de Actividad'               = round(PEA/pob *100, 1),
            'Tasa de Empleo'                  = round(ocup/pob *100, 1),
            'Tasa de Desocupación'            = round(desocup/PEA *100, 1))%>%
  pivot_longer(cols = c(5:7), names_to = "Variable", values_to = "Valor") %>%
  group_by(Variable) %>%
  summarise(Valor = first(Valor))

print (tabla_lon2)
```

```
## # A tibble: 3 × 2
##   Variable             Valor
##   <chr>                <dbl>
## 1 Tasa de Actividad     48.2
## 2 Tasa de Desocupación   5.7
## 3 Tasa de Empleo        45.5
```

Ahora si

# **Ejemplo 2: `pivot_wider()` - Convertir columnas en filas**

Convierte datos de formato largo a formato ancho, útil para
visualización y análisis. Volvemos con la tabla que hicimos recién para
ver como cambia


``` r
tabla_wid <- tabla_lon2 %>% 
  pivot_wider(names_from = "Variable", values_from = "Valor")

print(tabla_wid)
```

```
## # A tibble: 1 × 3
##   `Tasa de Actividad` `Tasa de Desocupación` `Tasa de Empleo`
##                 <dbl>                  <dbl>            <dbl>
## 1                48.2                    5.7             45.5
```

Sirve, por ejemplo, para hacer una tabla donde cada fila sea un
trimestre

# **Ejemplo 3: `separate()` - Dividir una columna en varias**

Descompone una columna en varias nuevas según un separador.


``` r
data_sep1 <- tibble(nombre_completo = c("John_García", "Kyuss_Kapo"))

print(data_sep1)
```

```
## # A tibble: 2 × 1
##   nombre_completo
##   <chr>          
## 1 John_García    
## 2 Kyuss_Kapo
```

``` r
data_sep <- separate(data_sep1, nombre_completo, into = c("nombre", "apellido"), sep = "_")

print(data_sep)
```

```
## # A tibble: 2 × 2
##   nombre apellido
##   <chr>  <chr>   
## 1 John   García  
## 2 Kyuss  Kapo
```

# **Ejemplo 4: `unite()`: Unir varias columnas en una sola**

Hace la operación inversa de `separate()`.


``` r
data_unite <- unite(data_sep, "nombre_completo", nombre, apellido, sep = "_")

print(data_unite)
```

```
## # A tibble: 2 × 1
##   nombre_completo
##   <chr>          
## 1 John_García    
## 2 Kyuss_Kapo
```

# **Ejemplo 5: `drop_na()`: Eliminar valores faltantes**

Filtra las filas que contienen valores faltantes en una o más columnas.


``` r
data_na <- tibble(Vacas = 1:3, Terneritos = c(10, NA, 30))
print(data_na)
```

```
## # A tibble: 3 × 2
##   Vacas Terneritos
##   <int>      <dbl>
## 1     1         10
## 2     2         NA
## 3     3         30
```

``` r
data_clean <- drop_na(data_na)
print(data_clean)
```

```
## # A tibble: 2 × 2
##   Vacas Terneritos
##   <int>      <dbl>
## 1     1         10
## 2     3         30
```

# **Ejemplo 6: `fill()`: Rellenar valores faltantes con el más cercano**

Rellena los valores `NA` con el valor no faltante más cercano hacia
arriba o abajo.


``` r
data_fill1 <- tibble(Guitarristas = c("Dimebag Darrel", "Tano Marciello", "Jaime Página", "Vladimir Lenin"), Guitarras = c(5, NA, 3, NA))
print(data_fill1)
```

```
## # A tibble: 4 × 2
##   Guitarristas   Guitarras
##   <chr>              <dbl>
## 1 Dimebag Darrel         5
## 2 Tano Marciello        NA
## 3 Jaime Página           3
## 4 Vladimir Lenin        NA
```

``` r
data_fill2 <- fill(data_fill1, Guitarras, .direction = "down")
print(data_fill2)
```

```
## # A tibble: 4 × 2
##   Guitarristas   Guitarras
##   <chr>              <dbl>
## 1 Dimebag Darrel         5
## 2 Tano Marciello         5
## 3 Jaime Página           3
## 4 Vladimir Lenin         3
```

¿Y como fillea la cuestión acá? los valores faltantes en grupo fueron
rellenados con el valor inmediatamente anterior.

# Conclusión

El paquete `tidyr` proporciona funciones esenciales para estructurar
bases de datos de manera ordenada y optimizar su análisis en el
ecosistema `tidyverse`. Su uso facilita la manipulación de datos en
proyectos de investigación y análisis de datos socioeconómicos.

# **`readr`**: Organización y estructuración de datos

El paquete **`readr`** del `tidyverse` se usa para **importar y exportar
datos** en diversos formatos como CSV, TSV y archivos de texto plano. Es
una alternativa rápida y eficiente en comparación con las funciones base
de R (`read.csv`, `read.table`).

## **Características clave**

-   Lectura rápida de archivos CSV, TSV y de texto plano.
-   Soporta codificaciones y delimitadores personalizados.
-   Convierte automáticamente los tipos de datos.
-   Compatible con `tibble` para facilitar la manipulación de datos.

### **Ejemplos prácticos con la base `eph_data`**

# **Ejemplo 1: Importar datos desde un CSV**


``` r
# Cargar el paquete
library(readr)

# Importar datos de CBA desde un archivo CSV
CBA_Regional <- read_csv("CBA Region.csv")
```

```
## Rows: 99 Columns: 7
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: ","
## dbl  (6): gran_buenos_aires, cuyo, noreste, noroeste, pampeana, patagonia
## date (1): indice_tiempo
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```

``` r
# Mostrar las primeras filas
head(CBA_Regional)
```

```
## # A tibble: 6 × 7
##   indice_tiempo gran_buenos_aires  cuyo noreste noroeste pampeana patagonia
##   <date>                    <dbl> <dbl>   <dbl>    <dbl>    <dbl>     <dbl>
## 1 2016-04-01                1515. 1358.   1372.    1334.    1515.     1557.
## 2 2016-05-01                1561. 1398.   1404.    1369.    1563.     1604.
## 3 2016-06-01                1614. 1445.   1448.    1414.    1614.     1661.
## 4 2016-07-01                1666. 1494.   1496.    1458.    1660.     1714.
## 5 2016-08-01                1675. 1496.   1502.    1459.    1663.     1724.
## 6 2016-09-01                1711. 1536.   1541.    1499.    1705.     1768.
```

-   `read_csv()` carga un archivo CSV y lo convierte en un `tibble`.
-   Identifica automáticamente los tipos de datos de cada columna.

# **Ejemplo 2: Exportar datos a un archivo CSV**


``` r
# Guardar un subconjunto de datos en un nuevo archivo CSV
write_csv(CBA_Regional, "cba_cuyo.csv")
```

-   `write_csv()` exporta los datos en un formato limpio y sin comillas
    innecesarias.
-   Es ideal para compartir datasets procesados.

# **`tibble`**: Organización y estructuración de datos

El paquete **`tibble`** de `tidyverse` es una alternativa moderna a los
`data.frame` base de R. Mejora la organización y presentación de datos,
facilitando su manipulación y análisis.

## **Características clave**

-   Imprime datos de forma más **legible** y compacta.
-   **No convierte** automáticamente caracteres en factores.
-   Permite definir **nombres de columnas sin restricciones**.
-   Compatible con **dplyr y otros paquetes del `tidyverse`**.

### **Ejemplos prácticos con la base `eph_data`**

# **Ejemplo 1: Convertir un data.frame en tibble**


``` r
# Cargar el paquete
library(tibble)

# Convertir eph_data en un tibble
eph_tibble <- as_tibble(eph_data)

# Ver la estructura
eph_tibble
```

```
## # A tibble: 48,335 × 181
##    CODUSU    ANO4 TRIMESTRE NRO_HOGAR COMPONENTE   H15 REGION MAS_500 AGLOMERADO
##    <chr>    <int>     <int>     <int>      <int> <int>  <int> <chr>        <int>
##  1 TQRMNOQ…  2023         3         1          4     0     44 N               91
##  2 TQRMNOP…  2023         3         1         12     0     43 N               14
##  3 TQRMNOQ…  2023         3         1          4     0      1 S               33
##  4 TQRMNOR…  2023         3         1          3     0     40 S               23
##  5 TQRMNOR…  2023         3         1          6     0     41 N               12
##  6 TQRMNOQ…  2023         3         1          5     0     44 N                9
##  7 TQRMNOR…  2023         3         1          5     0     43 N               14
##  8 TQRMNOP…  2023         3         1          3     0     43 N                3
##  9 TQRMNOS…  2023         3         1          5     0     43 N               36
## 10 TQRMNOP…  2023         3         1          6     0     43 S                2
## # ℹ 48,325 more rows
## # ℹ 172 more variables: PONDERA <int>, CH03 <int>, CH04 <int>, CH05 <chr>,
## #   CH06 <int>, CH07 <int>, CH08 <int>, CH09 <int>, CH10 <int>, CH11 <int>,
## #   CH12 <int>, CH13 <int>, CH14 <chr>, CH15 <int>, CH15_COD <int>, CH16 <int>,
## #   CH16_COD <int>, NIVEL_ED <int>, ESTADO <int>, CAT_OCUP <int>,
## #   CAT_INAC <int>, IMPUTA <int>, PP02C1 <int>, PP02C2 <int>, PP02C3 <int>,
## #   PP02C4 <int>, PP02C5 <int>, PP02C6 <int>, PP02C7 <int>, PP02C8 <int>, …
```

-   `as_tibble()` convierte un `data.frame` en un `tibble`.
-   La impresión es más limpia y muestra solo las primeras filas.

# **Ejemplo 2: Crear un tibble desde cero**


``` r
# Crear un tibble manualmente
datos_manual <- tibble(
  ID = c(1, 2, 3),
  Nombre = c("Juan", "María", "Luis"),
  Edad = c(25, 30, 40)
)

# Mostrar el tibble
datos_manual
```

```
## # A tibble: 3 × 3
##      ID Nombre  Edad
##   <dbl> <chr>  <dbl>
## 1     1 Juan      25
## 2     2 María     30
## 3     3 Luis      40
```

-   `tibble()` permite crear tablas de datos directamente.
-   No fuerza la conversión de tipos de datos.

# **Ejemplo 3: Seleccionar columnas y filas**


``` r
# Filtrar y seleccionar columnas
eph_filtrado <- eph_tibble %>% 
  select(CODUSU, CH06, P21) %>%  # Seleccionar columnas
  filter(CH06 >= 30)              # Filtrar por edad

eph_filtrado
```

```
## # A tibble: 26,918 × 3
##    CODUSU                         CH06   P21
##    <chr>                         <int> <dbl>
##  1 TQRMNOWVQHLOKRCDEOHCH00808310    30   120
##  2 TQSMNOQVWHKOKRCDEGKDB00789329    30     0
##  3 TQRMNOXUTHMOKPCDEGIBJ00809807    30    56
##  4 TQRMNOSTVHLOLMCDEGIBJ00804772    30     0
##  5 TQRMNOQWPHKMKOCDEHJGH00790199    30     0
##  6 TQRMNOQXXHJMLPCDEIJAH00792158    30     0
##  7 TQRMNOSPTHMKKSCDEGIBJ00809809    30   220
##  8 TQRMNOPUTHLMLNCDEGIBJ00809810    30    30
##  9 TQRMNOUTQHKNLSCDEIIAD00791518    30   150
## 10 TQRMNORSVHJOLPCDEHLEH00784594    30    90
## # ℹ 26,908 more rows
```

-   Compatible con `dplyr` para manipular datos de forma eficiente.
-   `select()` elige columnas específicas.
-   `filter()` aplica condiciones de filtrado.

# **Ejemplo 4: Acceder a columnas con `pull()`**


``` r
# Extraer una columna como vector
edades <- eph_tibble %>% pull(CH06)

# Ver las primeras edades
head(edades)
```

```
## [1] -1 -1 -1 -1 -1 -1
```

-   `pull()` extrae una columna de un tibble como vector.
-   Útil para cálculos y visualizaciones rápidas.

## **Conclusión**

El paquete `tibble` mejora la presentación y manipulación de datos en R,
optimizando su integración con `dplyr` y el ecosistema `tidyverse`. Su
uso es clave para trabajar con bases de datos como `eph_data` de manera
más eficiente y clara.

# **`stringr`**: Organización y estructuración de datos

El paquete **`stringr`** de `tidyverse` facilita la manipulación de
cadenas de texto en R. Proporciona funciones intuitivas, optimizadas y
compatibles con `tidyverse` para trabajar con datos textuales de manera
eficiente.

## **Características clave**

-   Funciones consistentes con prefijo `str_`.
-   Uso de expresiones regulares para búsqueda y reemplazo.
-   Manejo de caracteres especiales y tildes.
-   Compatible con `tidyverse` y `dplyr`.

### **Ejemplos prácticos con la base `eph_data`**

# **Ejemplo 1: Convertir texto a minúsculas o mayúsculas**


``` r
# Cargar el paquete
library(stringr)

#Vemos como está ahora
head(eph_data$categoria_ingreso)
```

```
## [1] "Bajo" "Bajo" "Bajo" "Bajo" "Bajo" "Bajo"
```

``` r
#Los ponemos en mayusculas
eph_datagh <- eph_data %>% 
  mutate(categoria_ingreso = str_to_upper(categoria_ingreso))

#Revisamos
head(eph_datagh$categoria_ingreso)
```

```
## [1] "BAJO" "BAJO" "BAJO" "BAJO" "BAJO" "BAJO"
```

-   `str_to_lower()` convierte texto a minúsculas.
-   `str_to_upper()` convierte a mayúsculas.

# **Ejemplo 2: Extraer parte de una cadena**


``` r
# Extraer los primeros 3 caracteres de una variable
eph_datastring <- eph_data %>% 
  mutate(CodigoRecortado = str_sub(CODUSU, 1, 3))

# Ver primeras filas
head(eph_datastring$CodigoRecortado)
```

```
## [1] "TQR" "TQR" "TQR" "TQR" "TQR" "TQR"
```

-   `str_sub()` permite extraer partes de una cadena.
-   Útil para trabajar con códigos o identificadores.

# **Ejemplo 3: Reemplazar texto en una variable**


``` r
# Reemplazar "primario" por "nivel básico"
eph_datax <- eph_data %>% 
  mutate(categoria_ingreso = str_replace(categoria_ingreso, "Bajo", "Ultrabajo"))

# Ver primeras filas
head(eph_datax$categoria_ingreso)
```

```
## [1] "Ultrabajo" "Ultrabajo" "Ultrabajo" "Ultrabajo" "Ultrabajo" "Ultrabajo"
```

-   `str_replace()` sustituye la primera coincidencia.
-   `str_replace_all()` reemplaza todas las coincidencias.

# **Ejemplo 4: Detectar la presencia de un patrón**


``` r
# Detectar si la variable NIVEL_ED contiene "universitario"
eph_dataxd <- eph_datax %>% 
  mutate(categoria_ingreso = str_detect(categoria_ingreso, "Ultrabajo"))

# Ver distribución de valores
table(eph_dataxd$categoria_ingreso)
```

```
## 
##  TRUE 
## 48335
```

-   `str_detect()` devuelve `TRUE` si el patrón aparece en el texto.
-   Útil para clasificar datos textuales.

# **Conclusión**

El paquete `stringr` permite trabajar de manera eficiente con datos
textuales en R, facilitando la manipulación de variables en bases de
datos como `eph_data`. Su integración con `tidyverse` lo convierte en
una herramienta fundamental para limpiar y estructurar datos.

# Ahora vamos con la práctica guiada

## Consignas de ejercicio en grupos de 3 personas y para resolver en 15 minutos

1)  Sobre la tabla de la pracitca guiada anterior, quiero saber cuantas
    personas hasta 29 años hay ocupadas y desocupadas por grupo de edad
    y sexo

#Cosas a tener en cuenta: ##Tienen que armar un mutate de la variable
ESTADO para que quede con los valores de ocupado y desocupado; consulten
el registro de EPH para ver que valores corresponden a cada cosa (para
la base individual)
