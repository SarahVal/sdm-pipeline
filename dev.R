 usethis::create_package("sdmpipeline")
# usethis::use_mit_license()

usethis::use_dev_package("usethis", type = "Suggests", remote = NULL)
usethis::use_dev_package("testthat", type = "Suggests", remote = NULL)
usethis::use_dev_package("devtools", type = "Imports", remote = NULL)
usethis::use_dev_package("pkgdown", type = "Suggests", remote = NULL)
usethis::use_dev_package("rmarkdown", type = "Suggests", remote = NULL)

# Use packages for development in vscode environment
usethis::use_dev_package("languageserver", type = "Suggests", remote = NULL)
usethis::use_dev_package("vscDebugger", type = "Suggests",
    remote = "github::ManuelHentschel/vscDebugger")

# Use packages for development using Jupyter
usethis::use_dev_package("IRkernel", type = "Suggests", remote = NULL)

# Use dependancies
usethis::use_package("dplyr", type = "Imports")
usethis::use_package("raster", type = "Imports")
usethis::use_package("terra", type = "Imports", min_version = TRUE)
usethis::use_package("ggplot2", type = "Imports")
usethis::use_package("virtualspecies", type = "Imports")
usethis::use_package("biogeo", type = "Imports")
usethis::use_package("stringr", type = "Imports")
usethis::use_package("CoordinateCleaner", type = "Imports")


# Create R functions

usethis::use_r('load_observations')
usethis::use_test('load_observations')

usethis::use_r('load_predictors')
usethis::use_test('load_predictors')

usethis::use_r('remove_collinearity')
usethis::use_test('remove_collinearity')

usethis::use_r('clean_coordinates')
usethis::use_test('clean_coordinates')

usethis::use_r('create_study_extent')
usethis::use_r('create_background')
usethis::use_r('add_predictors')
usethis::use_r('run_maxent')
usethis::use_r('setup_sdm_data')
# Create vignette

usethis::use_vignette("clean_data_example")
usethis::use_vignette("pipeline_example")


renv::update("gdalcubes")