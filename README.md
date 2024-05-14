_WARNING_ This is experimental and will change in the future.

This is a simple chapel wrapper for the GDAL C API, created initially from
the `c2chapel` tool from the chapel-lang/chapel repo.

The requirements are having gdal and the gdal headers available on the system.
Currently the package looks for a system install, but I am hoping to make spack
the default choice in the future.
