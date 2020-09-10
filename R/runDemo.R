#' @export
runDemo <- function() {
  # REPLACE N BY YOUR GROUP NUMBER AND DELETE THIS COMMENT
  appDir <- system.file("shiny-examples", "pi", package = "ptds2020hw4g0")
  if (appDir == "") {
    stop(
      "Could not find example directory. Try re-installing ptds2020hw4gN.",
      call. = FALSE
    )
  }

  shiny::runApp(appDir, display.mode = "normal")

}
