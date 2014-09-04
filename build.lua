#!/usr/bin/env texlua

-- Build script for "siunitx" files

-- Identify the bundle and module
bundle = ""
module = "siunitx"

-- Install config files
installfiles = {"*.cfg", "*.sty"}

-- No implementation as standard
typesetcmds = "\\AtBeginDocument{\\DisableImplementation}"

-- No tests for this bundle
testfildir = ""

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))