#!/usr/bin/env sh

# This script is used for testing using Travis-CI
# It is intended to work on their VM set up: Ubuntu 14.04 LTS
# As such, the nature of the system is hard-coded
# A minimal current TL is installed adding only the packages that are
# required

# See if there is a cached verson of TL available
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*

  # Install a minimal system
  ./install-tl --profile=../texlive.profile

  cd ..
fi

# Update tlmgr itself
tlmgr update --self

# l3build itself
tlmgr install l3build

# Required to build plain and LaTeX formats:
# TeX90 plain for unpacking
tlmgr install latex-bin tex xetex

# Dependencies of siunitx (have to be present in all cases)
tlmgr install amsmath graphics l3packages tools

# Dependencies
tlmgr install   \
  amsfonts      \
  bidi          \
  booktabs      \
  cancel        \
  caption       \
  colortbl      \
  csquotes      \
  datatool      \
  dvips         \
  ec            \
  enumitem      \
  fancyvrb      \
  hyperref      \
  libertine     \
  listings      \
  lualatex-math \
  makeindex     \
  mathpazo      \
  mptopdf       \
  multirow      \
  pgfplots      \
  psnfss        \
  opensans      \
  sansmath      \
  soulpos       \
  underscore    \
  unicode-math  \
  was           \
  xcolor        \
  xtab

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# Update the TL install but add nothing new
tlmgr update --self --all --no-auto-install
