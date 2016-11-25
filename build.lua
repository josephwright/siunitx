#!/usr/bin/env texlua

-- Build script for "siunitx" files

-- Identify the bundle and module
bundle = ""
module = "siunitx"

-- Install config files
installfiles = {"*.cfg", "*.sty"}

-- Release a TDS-style zip
packtdszip = true

-- No implementation as standard
typesetcmds = "\\AtBeginDocument{\\DisableImplementation}"

-- Typeset only the .tex files
typesetfiles = {"*.tex"}

-- Auto-versioning
versionfiles = {"siunitx-v3.dtx"}
versionform = "ProvidesExplPackage"

-- Find and run the build system
kpse.set_program_name ("kpsewhich")
dofile (kpse.lookup ("l3build.lua"))
