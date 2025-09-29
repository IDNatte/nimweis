# Package

# change this file to your project filename

version       = "0.1.0"
author        = "IDNatte" # change this to your awesome git user
description   = "an awesome nim svelte webui" # change this to your project awesome description
license       = "BSD-3-Clause"
srcDir        = "src"
binDir        = "build"
bin           = @["niweis"] # change this to your project main entry filename name


# Dependencies

requires "nim >= 2.2.4"

requires "https://github.com/IDNatte/embassets >= 0.0.5"

requires "https://github.com/IDNatte/nim-webui >= 2.5.0.0"