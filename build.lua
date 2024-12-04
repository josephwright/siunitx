-- Build script for "siunitx" files

-- Identify the bundle and module
bundle = ""
module = "siunitx"

-- Release a TDS-style zip
packtdszip = true

-- Typeset only the .tex files
typesetexe = "lualatex"
typesetfiles = {"*.tex"}

-- Shorten the tagging list
tagfiles = {"CHANGELOG.md", "siunitx.dtx"}

-- Source files cover those for rollback
sourcefiles =
  {
    "siunitx.dtx",
    "siunitx.ins",
    "siunitx.tex",
    "siunitx-abbreviations.cfg",
    "siunitx-abbreviation.dtx",
    "siunitx-angle.dtx",
    "siunitx-binary.cfg",
    "siunitx-binary.dtx",
    "siunitx-code.tex",
    "siunitx-command.dtx",
    "siunitx-complex.dtx",
    "siunitx-compound.dtx",
    "siunitx-emulation.dtx",
    "siunitx-locale.dtx",
    "siunitx-number.dtx",
    "siunitx-print.dtx",
    "siunitx-quantity.dtx",
    "siunitx-symbol.dtx",
    "siunitx-table.dtx",
    "siunitx-unit.dtx",
    "siunitx-v2.sty",
    "siunitx-version-1.cfg"
  }
-- Whilst we also need to install .cfg files
installfiles = {"*.cfg", "*.sty"}

-- ASCII mangling is not useful for us
asciiengines = { }

-- Detail how to set the version automatically
function update_tag(file,content,tagname,tagdate)
  tagname = string.gsub(tagname, "^v", "")

  if string.match(file,"CHANGELOG.md") then
    -- CHANGELOG
    local pattern = "v%d%.%d%.%d%d?"
    local url = "https://github.com/josephwright/siunitx/compare/"
    local previous = string.match(content,"compare/(" .. pattern .. ")%.%.%.HEAD")
    if tagname == previous then return content end
    content = string.gsub(content,
      "## %[Unreleased%]",
      "## [Unreleased]\n\n## [v" .. tagname .."] - " .. tagdate)
    return string.gsub(content,
      pattern .. "%.%.%.HEAD",
      "v" .. tagname .. "...HEAD\n[v" .. tagname .. "]: " .. url .. previous
        .. "...v" .. tagname)
  else
    -- siunitx.dtx
    return string.gsub(content,
      "\n\\ProvidesExplPackage %{siunitx%} %{[^}]+%} %{[^}]+%}\n",
      "\n\\ProvidesExplPackage {siunitx} {"
        .. tagdate .. "} {" .. tagname .. "}\n")
  end
end

function tag_hook(tagname)
  os.execute('git commit -a -m "Step release tag"')
  os.execute('git tag -a -m "" ' .. tagname)
end
