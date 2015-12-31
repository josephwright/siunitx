siunitx - A comprehensive (SI) units package
==============================================

Physical quantities have both numbers and units, and each
physical quantity should be expressed as the product of a number
and a unit. Typesetting physical quantities requires care to
ensure that the combined mathematical meaning of the number-unit
combination is clear. In particular, the SI units system lays
down a consistent set of units with rules on how these are to be
used. However, different countries and publishers have differing
conventions on the exact appearance of numbers (and units). The
`siunitx` package provides a set of tools for authors to typeset
quantities in a consistent way. The package has an extended set
of configuration options which make it possible to follow
varying typographic conventions with the same input syntax. The
package includes automated processing of numbers and units, and
the ability to control tabular alignment of numbers.

Installation
------------

The package is supplied in `dtx` format and as a pre-extracted
zip file, `siunitx.tds.zip`. The later is most convenient for
most users: simply unzip this in your local texmf directory . If
you want to unpack the `.dtx` yourself, running `tex
siunitx.dtx` will extract the package whereas `latex
siunitx.dtx` will extract it and also typeset the documentation.

The package requires LaTeX3 support as provided in the
`l3kernel` and `l3packages` bundles. Both of these are available
on [CTAN](http://www.ctan.org/) as ready-to-install zip files.
Suitable versions are available in MiKTeX 2.9 and TeX Live 2015
(updating the relevant packages online may be necessary).
LaTeX3, and so `siunitx`, requires the e-TeX extensions: these
are available on all modern TeX systems.

Typesetting the documentation requires a number of packages in
addition to those needed to use the package. This is mainly
because of the number of demonstration items included in the
text. To compile the documentation without error, you will
need the packages:
 - `amsmath`
 - `booktabs`
 - `cancel`
 - `caption`
 - `cleveref`
 - `colortbl`
 - `csquotes`
 - `datatool`
 - `helvet`
 - `mathpazo`
 - `multirow`
 - `listings`
 - `pgfplots`
 - `xcolor`