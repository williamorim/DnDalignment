
<!-- README.md is generated from README.Rmd. Please edit that file -->

# DnDalignment

The goal of DnDalignment is to easily build D&D alignment charts using
the `magick` R package.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("williamorim/DnDalignment")
```

## Example

This is a basic example which shows you how to build a chart:

``` r
library(DnDalignment)

create_alignment(
  chaotic_good = "https://www.cheatsheet.com/wp-content/uploads/2021/04/The-Office.jpg",
  neutral_good = "https://uploads.jovemnerd.com.br/wp-content/uploads/2021/02/the-office-jim-canta-musica-abertura.jpg",
  chaotic_neutral = "https://img.ibxk.com.br/2021/01/20/20133848690155.png",
  chaotic_evil = "https://www.looper.com/img/gallery/the-todd-packer-scene-in-the-office-that-went-too-far/l-intro-1620750071.jpg",
  lawful_good = "https://static3.srcdn.com/wordpress/wp-content/uploads/2019/11/Phyllis-The-Office.jpg?q=50&fit=crop&w=740&h=370&dpr=1.5",
  lawful_evil = "https://i.ytimg.com/vi/BWNhTOd9uXI/maxresdefault.jpg",
  neutral_evil = "https://cdn.jwplayer.com/v2/media/46qsexlL/poster.jpg?width=720",
  lawful_neutral = "https://uploads.jovemnerd.com.br/wp-content/uploads/2021/01/the-office-dwight-gerenta.jpg",
  true_neutral = "https://pbs.twimg.com/media/EXlUzHzXQAEgIZt.png"
)
```

<img src="man/figures/README-example-1.png" width="50%" style="display: block; margin: auto;" />
