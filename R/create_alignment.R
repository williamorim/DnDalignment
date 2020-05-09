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
#'
#' @return an image
#' @export
#'
#' @examples
create_alignment <- function(lawful_good, lawful_neutral, lawful_evil,
                             neutral_good, true_neutral, neutral_evil,
                             chaotic_good, chaotic_neutral, chaotic_evil) {

  template_path <- system.file(
    "template.jpg",
    package = "DnDalignment"
  )

  template <- magick::image_read(template_path)

  lawful_good <- magick::image_read(lawful_good)
  lawful_neutral <- magick::image_read(lawful_neutral)
  lawful_evil <- magick::image_read(lawful_evil)
  neutral_good <- magick::image_read(neutral_good)
  true_neutral <- magick::image_read(true_neutral)
  neutral_evil <- magick::image_read(neutral_evil)
  chaotic_good <- magick::image_read(chaotic_good)
  chaotic_neutral <- magick::image_read(chaotic_neutral)
  chaotic_evil <- magick::image_read(chaotic_evil)

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

