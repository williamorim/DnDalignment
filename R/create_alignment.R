#' Create a D&D alignment meme
#'
#' @param lawful_good string with the image path
#' @param lawful_neutral string with the image path
#' @param lawful_evil string with the image path
#' @param neutral_good string with the image path
#' @param true_neutral string with the image path
#' @param neutral_evil string with the image path
#' @param chaotic_good string with the image path
#' @param chaotic_neutral string with the image path
#' @param chaotic_evil string with the image path
#' @param placeholder string with the imagem path to a placeholder image
#' (not used alignment)
#'
#' @return an image
#' @export
#'
#' @examples
create_alignment <- function(lawful_good = NULL, lawful_neutral = NULL,
                             lawful_evil = NULL,
                             neutral_good = NULL, true_neutral = NULL,
                             neutral_evil = NULL,
                             chaotic_good = NULL, chaotic_neutral = NULL,
                             chaotic_evil = NULL, placeholder = NULL) {

  template_path <- system.file(
    "template.jpg",
    package = "DnDalignment"
  )

  template <- magick::image_read(template_path)

  lawful_good <- ler_imagem(lawful_good, placeholder)
  lawful_neutral <- ler_imagem(lawful_neutral, placeholder)
  lawful_evil <- ler_imagem(lawful_evil, placeholder)
  neutral_good <- ler_imagem(neutral_good, placeholder)
  true_neutral <- ler_imagem(true_neutral, placeholder)
  neutral_evil <- ler_imagem(neutral_evil, placeholder)
  chaotic_good <- ler_imagem(chaotic_good, placeholder)
  chaotic_neutral <- ler_imagem(chaotic_neutral, placeholder)
  chaotic_evil <- ler_imagem(chaotic_evil, placeholder)

  template %>%
    magick::image_composite(
      magick::image_scale(lawful_good, "425x263!"),
      offset = "+39+22"
    ) %>%
    magick::image_composite(
      magick::image_scale(neutral_good, "425x263!"),
      offset = "+539+22"
    ) %>%
    magick::image_composite(
      magick::image_scale(chaotic_good, "425x263!"),
      offset = "+1039+22"
    ) %>%
    magick::image_composite(
      magick::image_scale(lawful_neutral, "425x263!"),
      offset = "+39+422"
    ) %>%
    magick::image_composite(
      magick::image_scale(true_neutral, "425x263!"),
      offset = "+539+422"
    ) %>%
    magick::image_composite(
      magick::image_scale(chaotic_neutral, "425x263!"),
      offset = "+1039+422"
    ) %>%

    magick::image_composite(
      magick::image_scale(lawful_evil, "426x263!"),
      offset = "+38+822"
    ) %>%
    magick::image_composite(
      magick::image_scale(neutral_evil, "425x263!"),
      offset = "+539+822"
    ) %>%
    magick::image_composite(
      magick::image_scale(chaotic_evil, "425x263!"),
      offset = "+1039+822"
    )
}

#'
ler_imagem <- function(path, placeholder) {
  imagem_preta <- system.file(
    "black.png",
    package = "DnDalignment"
  )
  if (is.null(path)) {
    if(is.null(placeholder)) {
      magick::image_read(imagem_preta)
    } else {
      magick::image_read(placeholder)
    }
  } else {
    magick::image_read(path)
  }
}

