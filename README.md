[![CRAN Status](https://r-pkg.org/badges/version/gmt)](https://cran.r-project.org/package=gmt)
[![CRAN Monthly](https://cranlogs.r-pkg.org/badges/gmt)](https://cran.r-project.org/package=gmt)
[![CRAN Total](https://cranlogs.r-pkg.org/badges/grand-total/gmt)](https://cran.r-project.org/package=gmt)

gmt
===

Interface between the GMT map-making software and R, enabling the user to
manipulate geographic data within R and call GMT commands to draw and annotate
maps in postscript format.

The gmt package is about interactive data analysis, rapidly visualizing subsets
and summaries of geographic data, while performing statistical analysis in the R
console.

Installation
------------

The package can be installed from [CRAN](https://cran.r-project.org/package=gmt)
using the `install.packages` command:

```R
install.packages("gmt")
```

Usage
-----

For a summary of the package:

```R
library(gmt)
?"gmt-package"
```

References
----------

https://www.generic-mapping-tools.org

Development
-----------

The package is developed openly on
[GitHub](https://github.com/arni-magnusson/gmt).

Feel free to open an [issue](https://github.com/arni-magnusson/gmt/issues) there
if you encounter problems or have suggestions for future versions.

The current development version can be installed using:

```R
library(remotes)
install_github("arni-magnusson/gmt")
```
