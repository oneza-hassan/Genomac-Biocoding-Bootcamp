# Create and set a new temporary directory to be recognized by R
tempdir <- "E:/Rtmp"
dir.create(tempdir, showWarnings = FALSE)
Sys.setenv(TMPDIR = tempdir, TEMP = tempdir, TMP = tempdir)

# Create a temporary file and check its location
temp_file <- tempfile()
print(temp_file)
sessionInfo()
normalizePath("~")