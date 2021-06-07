Standard# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Improve some fallback unit definitions

### Fixed
- Printing of symbols with encodings other than UTF-8 (issue #470)
- Argument order for `\DeclareSIPrefix` (issue #471)
- Emulation of `number-unit-separator` (issue #473)

## [v3.0.10]

### Changed
- Documentation improvements

### Fixed
- Incompatibility with REVTeX (issue #469)

## [v3.0.9]

### Changed
- Documentation improvements
- Add a hint for formatting regression tables

### Fixed
- Suppress some spurious overfull box warnings 
- Issue an error with `output-product`
- Rounding of uncertainties falling in the integer part (issue #454)
- Printing in text mode for compound quantities (issue #463)
- Correctly handle `\protect` in literal units (issue #464)
- Interpretation of uncertainties in integers (issue #465)

## [v3.0.8]

### Changed
- Documentation improvements
- Add `\barn`, `\knot`, `\mmHg`, `\nauticalmile` to list of deprecated units
- Provide a fallback route for deprecated units

### Fixed
- Correct printing of `10^{0}` (issue #459)
- Emulation of `group-four-digits` (issue #461)

## [v3.0.7]

### Fixed
- Formatting of some literal units (issue #449)
- Issue a warning for removed option `load-configurations` (issue #455)
- Printing of `\times` and `\cdot` in text mode when using a locale
  (issue #457)
- Implement missing `output-exponent-marker` (issue #458)

## [v3.0.6]

### Changed
- Documentation improvements

### Fixed
- Avoid error if `forbid-literal-units` is set in the preamble (issue #452)
- Format separate uncertainty correctly where it falls purely in the integer
  part (issue #454)

## [v3.0.5]

### Changed
- Documentation improvements

### Fixed
- Bracket separate uncertainties in compound quantities (issue #441)
- Color negative values in table cells correctly (issue #444)
- Avoid consumption of any math alphabets (issue #445)
- Mark `\bar` as removed (issue #448)

## [v3.0.4]

### Changed
- Standardise and document the position of `\color` in negative values
  within the code-level API

### Fixed
- Alignment of integers in tables when `parse-numbers = tables` (issue #442)

## [v3.0.3]

### Changed
- Documentation improvements

### Fixed
- Emulation of `input-symbols` (fixes #431)
- Standard setting for `group-minimum-digits` (issue #436)
- Application of negative color in table cells (issue #439)

## [v3.0.2]

### Changed
- Documentation improvements
- Better default for `product-symbol`

### Fixed
- Option settings `group-digits = true` and `group-digits = false` (issue #422)
- Correct position of decimal marker in some tables (issue #423)
- Coloring of negative numbers in tables (issue #424)
- Alignment of numbers when printing without a `table-format` (issue #424)
- Emulation of `\celsius` (issue #426)
- Allow `\cdot` to work in text mode (issue #430)

### Deprecated
- Unit macro `\celsius`

## [v3.0.1]

### Added
- Public `\l_siunitx_unit_fraction_tl` variable

### Changed
- Documentation improvements

### Fixed
- Printing of fractional units in text mode (issue #418)
- Include `siunitx-abbreviations.cfg` in fallback v2 files (issue #419)
- French translation of 'to' for ranges (issue #421)

## [v3.0.0]

### Added
- `\complexnum`
- `\complexqty`
- `\qty`
- `\qtylist`
- `\qtypower`
- `\qtylist`
- Option `allow-quantity-breaks`
- Option `angle-mode`
- Option `angle-separator`
- Option `angle-symbol-degree`
- Option `angle-symbol-minute`
- Option `angle-symbol-second`
- Option `drop-exponent`
- Option `drop-uncertainty`
- Option `drop-zero-decimal`
- Option `evaluate-expression`
- Option `exponent-mode`
- Option `expression`
- Option `fill-angle-degrees`
- Option `fill-angle-minutes`
- Option `fill-angle-seconds`
- Option `fraction-command`
- Option `list-exponents`
- Option `minimum-decimal-digits`
- Option `minimum-integer-digits`
- Option `overwrite-commands`
- Option `prefix-mode`
- Option `print-implicit-plus`
- Option `print-unity-mantissa`
- Option `print-zero-exponent`
- Option `product-exponents`
- Option `product-mode`
- Option `product-phrase`
- Option `product-symbol`
- Option `qualifier-phrase`
- Option `quantity-product`
- Option `range-exponents`
- Option `round-pad`
- Option `number-angle-product`
- Option `propagate-math-font`
- Option `reset-math-version`
- Option `reset-text-family`
- Option `reset-text-series`
- Option `reset-text-shape`
- Option `separate-uncertainty-units`
- Option `series-version-mapping`
- Option `table-align-text-after`
- Option `table-align-text-before`
- Option `table-alignment-mode`
- Option `table-column-type`
- Option `text-family-to-math`
- Option `text-series-to-math`
- Option `uncertainty-mode`
- Option `unit-font-command`
- Option setting `list-mode = bracket`
- Option setting `mode = match`
- Option setting `number-mode = match`
- Option setting `per-mode = power-positive-first`
- Option setting `qualifier-mode = bracket`
- Option setting `qualifier-mode = phrase`
- Option setting `qualifier-mode = combine`
- Option setting `product-mode = bracket`
- Option setting `range-mode = bracket`
- Option setting `text-mode = match`
- Option setting `unit-mode = match`

### Changed
- Modular re-write to provide code-level API
- Update unit support to 9th edition of SI Brochure

### Deprecated
- `\DeclareSIPrePower`
- `\DeclareSIPostPower`
- `\SIUnitSymbolAngstrom`
- `\SIUnitSymbolArcminute`
- `\SIUnitSymbolArcsecond`
- `\SIUnitSymbolCelsius`
- `\SIUnitSymbolDegree`
- `\SIUnitSymbolMicro`
- `\SIUnitSymbolOhm`
- Option `add-decimal-zero`
- Option `allow-number-unit-break`
- Option `add-arc-degree-zero`
- Option `add-arc-minute-zero`
- Option `add-arc-second-zero`
- Option `arc-separator`
- Option `explicit-sign`
- Option `extract-mass-in-kilograms`
- Option `fraction-function`
- Option `omit-uncertainty`
- Option `overwrite-functions`
- Option `multi-part-units`
- Option `number-angle-product`
- Option `number-unit-product`
- Option `prefixes-as-symbols`
- Option `retain-unity-mantissa`
- Option `retain-zero-uncertainty`
- Option `retain-zero-exponent`
- Option `scientific-notation`
- Option `separate-uncertainty`
- Option `table-align-text-post`
- Option `table-align-text-pre`
- Option `table-comparator`
- Option `table-figures-decimal`
- Option `table-figures-exponent`
- Option `table-figures-integer`
- Option `table-figures-uncertainty`
- Option `table-omit-exponent`
- Option `table-parse-only`
- Option `table-sign-exponent`
- Option `table-sign-mantissa`
- Option `table-space-text-post`
- Option `table-space-text-pre`
- Option `text-font-command`
- Option `zero-decimal-to-integer`
- Option setting `list-units = brackets`
- Option setting `per-mode = reciprocal`
- Option setting `per-mode = reciprocal-positive-first`
- Option setting `qualifier-mode = brackets`
- Option setting `qualifier-mode = space`
- Option setting `qualifier-mode = text`
- Option setting `product-mode = brackets`
- Option setting `range-units = brackets`
- Option setting `table-number-alignment = center-decimal-marker`

### Removed
- Option `abbreviations`
- Option `add-integer-zero`
- Option `binary-units`
- Option `close-bracket`
- Option `detect-all`
- Option `detect-display-math`
- Option `detect-family`
- Option `detect-inline-family`
- Option `detect-inline-weight`
- Option `detect-mode`
- Option `detect-none`
- Option `detect-shape`
- Option `detect-weight`
- Option `input-protect-tokens`
- Option `input-quotient`
- Option `literal-superscript-as-power`
- Option `open-bracket`
- Option `quotient-mode`
- Option `math-angstrom`
- Option `math-arcminute`
- Option `math-arcsecond`
- Option `math-celsius`
- Option `math-degree`
- Option `math-micro`
- Option `math-ohm`
- Option `math-rm`
- Option `math-sf`
- Option `math-tt`
- Option `redefine-symbols`
- Option `number-math-rm`
- Option `number-math-sf`
- Option `number-math-tt`
- Option `number-text-rm`
- Option `number-text-sf`
- Option `number-text-tt`
- Option `table-unit-alignment`
- Option `text-angstrom`
- Option `text-arcminute`
- Option `text-arcsecond`
- Option `text-celsius`
- Option `text-degree`
- Option `text-micro`
- Option `text-ohm`
- Option `text-rm`
- Option `text-sf`
- Option `text-tt`
- Option `unit-math-rm`
- Option `unit-math-sf`
- Option `unit-math-tt`
- Option `unit-text-rm`
- Option `unit-text-sf`
- Option `unit-text-tt`
- Option `version-1-compatibility`

## [v2.8e] - 2021-04-17

### Fixed
- Missing setting in emulation of v1 option `repeatunits`

## [v2.8d] - 2021-04-09

### Changed
- Correct file dates for configuration files

## [v2.8c] - 2021-03-27

### Changed
- Updates to follow LaTeX2e kernel revisions
- No longer apply `\addtocontents` patch

## [v2.8b] - 2020-02-25

### Fixed
- Correct `\ohm` when `newtxmath` is loaded

## [v2.8a] - 2020-02-23

### Fixed
- Correct `\ohm` when `unicode-math` is loaded (issue #377)

## [v2.8] - 2020-02-20

### Changed
- Use companion font symbols/force `textcomp` loading

## [v2.7v] - 2020-02-19 [UNUSED]

### Fixed
- Appearance of superscript decimals with comma decimal marker

## [v2.7u] - 2020-01-15

### Changed
- Modified internals to track `expl3` changes

## [v2.7t] - 2019-10-10

### Fixed
- Combination of `round-half = even` with `round-precision = 0`
- Include sign in astronomy-style angles

## [v2.7s] - 2018-05-17

### Changed
- Revert package date format change in v2.7l

## [v2.7r] - 2018-05-16

### Changed
- Modified internals to track `expl3` changes

### Fixed
- Collect tokens before `\ignorespaces` in tabulars (esp. with
  REVTeX) (issue #337)

## [v2.7q] - 2018-05-11

### Fixed
- Allow for `cellspace` "column" option (issue #315)

## [v2.7p] - 2018-05-10

### Changed
- Avoid an `expl3` internal function
- Better approach to removing `\ignorespaces`

## [v2.7o] - 2018-05-02 [UNUSED]

## [v2.7n] - 2018-04-27

### Fixed
- Issue with symbolic input and digit grouping

## [v2.7m] - 2018-03-20

### Changed
- Update `\astronomicalunit` symbol (issue #332)

## [v2.7l] - 2018-03-11

### Added
- Abbreviations for milli/microjoule

### Changed
- Switch package date format to ISO

### Fixed
- Scope of some internal variable corrected (issue #327)
- Track `unicode-math` changes (issue #331)

## [v2.7k] - 2017-11-26

### Fixed
- Incorrect internal variable renamed (issue #320)
- Suppress leading "1" when units are not parsed (issue #318)
- Correct default value for `arc-separator` (issue #319)

## [v2.7j] - 2017-08-02

### Fixed
- Use correct name for internal boolean

## [v2.7i] - 2017-07-23

### Fixed
- Incorrect internal variable renamed (issue #311)

## [v2.7h] - 2017-06-13

### Changed
- Some abuses of `expl3` box functions removed (issue #309)

## [v2.7g] - 2017-05-19

### Changed
- Use new `expl3` functions for some internal tests

### Fixed
- Change box collection following `expl3` update
- Links to BIPM website

## [v2.7f] - 2017-03-23

### Changed
- Name of 'hidden' function used by for bookmark generation

### Fixed
- Spacing when option `per-mode = reciprocal-positive-first` is active

## [v2.7e] - 2017-03-06

### Fixed
- Properly handle signs in `table-format` key (issue #303)

## [v2.7d] - 2017-02-19

### Fixed
- Avoid doubled tokens in pre-number part of tables

## [v2.7c] - 2017-02-01

### Fixed
- Correct integer alignment in tables (issue #302)

## [v2.7b] - 2017-01-28

### Fixed
- Fix an issue with large numbers in scientific mode (issue #301)

## [v2.7a] - 2017-01-01

### Changed
- Track `expl3` changes regarding key-value management

## [v2.7] - 2017-01-01

### Added
- Code-level API variable `\l_siunitx_unit_symbolic_seq`

### Fixed
- Allow for `cellspace` package in math mode

## [v2.6s] - 2016-09-02

### Changed

- Improved a warning concerning `color` package

## [v2.6r] - 2016-08-22

### Changed
- Warn if `color` is not loaded (issue #289)
- Document some aspects of internal number processing (issue #294)
- Minor `expl3` fixes including tracking deprecations

### Fixed
- Handling of `e0` input (issue #292)
- Added some missing internal variable declarations

## [v2.6q] - 2016-03-01

### Fixed
- Correct detection of font inside cells

### Changed
- Index formatting

## [v2.6p] - 2016-01-19

### Fixed
- Formatting of `\degreeCelsius` (issue #285)
- Allow input unit with prefix and `\per` in `exponent-to-prefix` (issue 283)

## [v2.6o] - 2016-01-05

### Fixed
- Allow for unit powers when converting exponents to prefixes

## [v2.6n] - 2015-12-31

### Changed
- Formatting of `\degreeCelsius` (issue #282)

### Fixed
- Appearance of ångström with LuaTeX (issue #280)

## [v2.6m] - 2015-10-15

### Fixed
- Interaction with `mwtab` in some table cells

## [v2.6l] - 2015-09-14

### Fixed
- An internal error in literal unit formatting

## [v2.6k] - 2015-09-12

### Changed
- Track/exploit `expl3` updates

## [v2.6j] - 2015-09-01

### Fixed
- Treatment of `\pm` when `exponent-to-prefix` is true
- Print all units when `exponent-to-prefix` is true

## [v2.6i] - 2015-08-18

### Changed
- Performance improvements
- Removed one deprecated `expl3` functions

### Fixed
- Use of `\cancel` in math mode (issue #264)
- Cope better with large numbers when rounding (issue #198)

## [v2.6h] - 2015-07-17

### Changed
- Track `expl3` changes

## [v2.6g] - 2015-06-25

### Fixed
-  Handling of empty table cells (issue #271)

## [v2.6f] - 2015-06-16

### Added
- Spanish coverage for translations

### Changed
- Approach to supporting `mathspec`
- Remove a (probably) misplaced `\scan_stop:`

### Fixed
- Behaviour of `table-sign-exponent` and `table-sign-mantissa` when set
  false

## [v2.6e] - 2015-01-21

### Changed
- Auto-detect `mathspec`/`eulervm`

## [v2.6d] - 2014-10-28

### Fixed
- Fix conversation of uncertainty part with integer mantissas

## [v2.6c] - 2014-10-01

### Fixed
- `\micro` when `fontspec` is loaded

## [v2.6b] - 2014-09-27

### Changed
-  Method for font shape detection to allow for, _e.g._ `\scshape`

### Fixed
- Typo in standard `input-protect-tokens` options

## [v2.6a] - 2014-09-15

### Changed
- Improved Unicode math symbol coverage

## [v2.6] - 2014-09-05

### Changes
- Switch to math mode by default for all printing
- Use `\mathord` before comparators
- Only apply 'tight' spacing to `\mathbin` cases
- Use a 'real' minus with `tex4ht`
- Use a full width space between number and unit (issue #230)
- Note that colour for printing powers is set by `power-font` (issue #240)
- Use `\mathord` to get 'tight' spacing for signs (issue #241)
- Old `repeatunits` option is partly coved by `range-units` (issue #254)

### Fixed
- Loading when `mdwtab` is in use
- Appearance of minus sign when `tex4ht` is in use
- Spacing when printing comparators
- Preserve `\fg` in bookmarks (issue #226)
- Allow for `output-exponent-marker` option in tables (issue #232)
- Conversion of integer with separate uncertainty to 'compact' form
  (issue #233)
- Option name wrong in v1 table (issue #240)
- Use `\textpm` in text mode if `textcomp` package is loaded (issue #249)
- Ignore hard spaces in `\num` (issue #256)
- Use `\mathord` for tight spacing on 'in line' exponent (issue #257)

## [v2.5s] - 2013-07-31

### Fixed
- Internal issue with one key

## [v2.5r] - 2013-07-11

## Fixed
- Update internals to remove deprecated key support

## [v2.5q] - 2013-03-11

### Changed
- Issue warning if `cellspace` column letter is moved

### Fixed
- Reorder creation of unit wrappers and option setting (issue #218)
- Replace active hyphen with 'other' one (issue #222)

## [v2.5p] - 2013-02-01

### Fixed
- Search/replace `\pm` and `\mp` in text mode printing

## [v2.5o] - 2013-01-09

### Changed
- Track `expl3` changes

## [v2.5n] - 2012-12-29

### Fixed
- Correctly calculate grouping data to send to `pgf` (issue #211)

## [v2.5m] - 2012-11-27

### Fixed
- Allow for `bidi`/RTL when applying `\text`
- Search-and-replace in UTF-8 literal units
- Load binary-units only when requested (issue #201)
- Disable `\hightlight` in bookmarks (issue #207)

## [v2.5l] - 2012-11-21

### Changed
- Track `expl3` changes

## [v2.5k] - 2012-11-13

### Changed
- Explicitly require `xparse`

### Fixed
- Skip white space after `\begin{document}`
- Correct use of fixed dimension/skip values internally
- Store name of `\frac` function, don't `\let` it (issue #203)

## [v2.5j] - 2012-09-18

### Fixed
- Erroneous branch in test for rounding removed (issue #202)

## [v2.5i] - 2012-09-11

### Changed
- Internal search for first token in some strings

### Fixed
- Align numbers with no uncertainties correctly when space is reserved
  for uncertainty part

## [v2.5h] - 2012-08-28

### Changed
- Test literal units for being 'blank' not 'empty'

## [v2.5g] - 2012-07-22

### Fixed
- Function of `binary-units` option

## [v2.5f] - 2012-07-16

### Changed
- Track `expl3` changes

## [v2.5e] - 2012-06-13

### Fixed
- An internal error in unit expansion (introduced in v2.4f)

## [v2.5d] - 2012-06-11

### Added
- Extend qualifier system to cover 'phrases'

### Changed
- Extend UTF-8 support (issue #199)
- Track `expl3` changes

## [v2.5c] - 2012-05-03

### Fixed
- Detect and skip empty `s`-column cells (issue #197)
- Detection of zero input with fixed exponent (issue #198)

## [v2.5b] - 2012-04-21

### Fixed
- Detect eulervm package (issue #195)
- Search-and-replace for category 'other' "_' and "^" in literal
  units (issue #196)

## [v2.5a] - 2012-04-19

### Fixed
- When creating free-standing unit, allow for dynamic nature of
  spacing (bug introduced in v2.5)

## [v2.5] - 2012-04-15

### Added
- Option `zero-decimal-to-integer` (issue #178)
- Option to omit uncertainly entirely (issue #180)

### Changed
- Reduce use of implicit math mode
- Document that `round-mode = places` acts on the mantissa (issue #193)
- Rearrange processing code such that exponents can be dropped (issue #192)

### Fixed
- Use a standard-width comparator for tables (issue #183)

## [v2.4n] - 2012-04-12

### Changed
- Extend scientific notation code to better handle large numbers of digits

## [v2.4m] - 2012-04-04

### Fixed
- Handling of a single entry in `\SIlist`

## [v2.4l] - 2012-03-23

### Fixed
- Load ordering with `soulpos`

## [v2.4k] - 2012-03-22

### Fixed
- Interaction of `^` and `_` with `breqn` (issue #191)
- Adapted `list-pair-separator` for `translator` package (issue #190)
- Check for `round-minimum` with large values

## [v2.4j] - 2012-01-26

### Fixed
- Ensure that typesetting is in hmode

## [v2.4i] - 2012-01-19

### Fixed
- Check for zero decimal part (issue #186)

## [v2.4h] - 2012-01-15

### Changed
- Shortened an internal code path

### Fixed
- Bug in `reciprocal-positive-first` implementation

## [v2.4g] - 2012-01-06

### Changed
- Internal changes due to update to `expl3` (issue #131)

## [v2.4f] - 2011-12-24

### Changed
- Improve performance in an internal mapping
- Use faster data structures internally

### Fixed
- Force font update in table cells
- One incorrect internal variable name

## [v2.4e] - 2011-12-11

### Fixed
- Replacements used with `latin1` encoding

## [v2.4d] - 2011-12-09

### Changed
- Source formatting

### Fixed
- Free-standing units using `xspace` in captions

## [v2.4c] - 2011-12-09

### Fixed
- Test for text mode font

## [v2.4b] - 2011-12-09

### Fixed
- Incorrect doubling of `#` tokens

## [v2.4a] - 2011-12-04

### Changed
- Extend search-and-replace in units to cover UTF-8 symbols
- Symbols used with UTF-8 engines (issue #176)

### Fixed
- Interaction of `textcomp` with user symbol changes (issue #181)

## [v2.4] -  2012-04-15

### Added
- Option `round-half = even` (issue #40)
- Option `list-pair-separator` (issue #136)
- Auto-conversion for prefixes (issue #173)
- Notes for upgraders

### Changed
- Automatically 'compress' exponents (issue #62)
- Clean up internal `expl3` usage
- Removed remaining 'math' options

### Fixed
- Replace minus sign in text mode (issue #161)

## [v2.3h] - 2011-10-14

### Changed
- Internal logic improved
- Explicitly load `xfac` as part of documentation

### Fixed
- Select math mode with `tex4ht`  (issue #170)
- Print superscripts using HTML tags with `tex4ht` (issue #171)

## [v2.3g] - 2011-10-06

### Changed
- Mark-up in documentation

### Fixed
- Check for leading zero when dealing with rounding 'large' exponents
  (issue #168)
- Internal issue with undeclared variable

## [v2.3f] - 2011-09-13

### Fixed
- Trap erroneous numbers in tables (issue #167)

## [v2.3e] - 2011-09-09

### Added
- Advice on local installation

### Changed
- Remove deprecated `expl3` functions
- Performance improvements

## [v2.3d] - 2011-08-18

### Fixed
- Bad csname for superscripts in literal mode

## [v2.3c] - 2011-08-12

### Fixed
- Use correct `\pm` for units in literal mode (issue #163)

## [v2.3b] - 2011-08-08

### Added
- Additional abbreviated units (issue #162)

### Fixed
- Definition of abbreviations using option `free-standing-units`

## [v2.3a] - 2011-07-17

### Changed
- Internal `expl3` updates

### Fixed
- Restore changes from v2.2l, missed in v2.3

## [v2.3] - 2011-07-09

### Added
- Supported for powers in literal units (issue #152)
- Unit abbreviation `\hl`/`\hL`
- Demo for 'closing up' not after an integer (issue #151)

### Changed
- Load binary units as an option
- Used an internal version of `\textsuperscript`
- Internal `expl3` style
- Revised `s`-column printing

###  Deprecated
- Option `load-configurations`

### Fixed
- Behavior of `table-auto-round` option
- Missing deactivation in `strict` option
- Grouping digits (issue #133)
- Addition of explicit sign to mantissa (issue #139)
- Various issues with tabular alignment

## [v2.2l] - 2011-06-30

### Fixed
- Group pre-unit parsing (issue #158)

## [v2.2k] - 2011-06-27

### Fixed
- Avoid `\peek_...` inside the print routine (issue #157)

## [v2.2j] - 2011-06-26

### Fixed
- Avoid box for range phrase (issue #156)

## [v2.2i] - 2011-06-15

### Fixed
- Detect font in table cells before boxing up (issue #153)

## [v2.2h] - 2011-06-03

### Fixed
- Deal correctly with 'roll-over' in rounding integer part (issue #150)

## [v2.2g] - 2011-06-02

### Fixed
- Set per-unit options for list/range units when a single unit is used
  (issue #149)
- Add test for `parse-numbers = false` to `\tablenum` code

## [v2.2f] - 2011-05-25

### Fixed
- `table-column-width = 0pt` (issue #146)

## [v2.2e] - 2011-05-23

### Fixed
- Remove 'mantissa' marker for numbers with no real part (issue #145)

## [v2.2d] - 2011-04-28

### Fixed
- The `strict` option (issue #143)
- Add `\dots` to protected symbols (issue #131)

## [v2.2c] - 2011-04-20

### Fixed
- Bad expansion of toks (issue #141)

## [v2.2b] - 2011-04-19

### Fixed
- Bad formatting of negative exponents when using 'E' output
- Internally one argument if `color` is not loaded (issue #138)
- Make `\of` expandable in literal contexts (issue #137)

## [v2.2a] - 2011-04-16

### Changed
- Make full text for tables, etc., hyperlinks in docs
- Re-arrange docs
- Performance enhancements

### Fixed
- Auto-insertion of "1" when literal mode is on (issue #135)
- Detect `\end` macro and print output correctly (issue #134)
- Group digits for input containing symbolic entries (issue #131)
- Specify a default for `group-digits` (issue #130)
- Correctly expand macros with arguments in tables (issue #129)
- Ensure that `*` in tabular preamble works correctly with `S`/`s` columns
  (issue #128)

## [v2.2] - 2011-04-13

### Added
- `\tablenum` command (issue ##117)
- Parse separated uncertainties (issue #57)
- Allow `\cancel` in units (issue #4)
- Allow `\highlight` in units
- Option `table-column-width` (issue #105)
- Option `bracket-negative-numbers` (issue #5)
- Option `table-align-comparators` (issue #86)
- Option `minimum-integer-digits` (issue #112)
- Option to print exponent marker literally (issue #113)
- Support for engineering-style number output (issue #114)
- Example of centring a right-aligned column (issue #85)
- Various unit abbreviations

### Changed
- Renamed `...-separator` options to `...-product` where appropriate

### Fixed
- Allow `\DeclareSIUnit` to take optional argument (issue #121)
- Latent issue with micro symbol when `fontspec` is loaded
- Right-alignment in fixed-width columns
- Print leading `1` when units start `\per` and `per-mode = symbol`
  (issue #125)

## [v2.1p] - 2011-04-04

### Fixed
- Two bugs in comparator code

## [v2.1o] - 2011-04-03

### Fixed
- Detect arev package (issue #122)
- Allow for negative fixed exponents (issue #123)

## [v2.1n] - 2011-03-31

### Fixed
- Rounding to zero significant figures should always give a 0 (issue #119)
- `round-integer-to-decimal` when `round-precision = 0`

## [v2.1m] - 2011-03-20

### Added
- `\J` as an abbreviation for `\joule`

### Changed
- Various improvements to documentation
- Avoid expanding units when written to log as 'invalid literals'

### Fixed
- Ensure that some output occurs in when `round-precision = 0` and
  `round-mode = places` (issue #111)

## [v2.1l] - 2011-02-10

### Fixed
- A couple of errant 'weight' => 'family' changes

## [v2.1k] - 2011-02-09

### Added
- Option `detect-inine-family`

### Changed
- Use an internal integer for text minus

## [v2.1j] - 2011-02-01

### Fixed
- Check for `\inputencodingname` macro rather than `inputenc` package
  (issue #107)

## [v2.1i] - 2011-01-27

### Changed
- New approach for `detect-display-math`

### Fixed
- New approach to `symbol-or-fraction` (issue #104)

## [v2.1h] - 2011-01-18

### Changed
- Detect AMS display-like environments

## [v2.1g] - 2010-12-21

### Changed
- Update test for `expl3` and `xparse`

## [v2.1f] - 2010-11-24

### Fixed
- One-letter typo (issue #101)

## [v2.1e] - 2010-11-22

### Fixed
- Issue with free-standing unit options (issue #99)
- Text mode symbols with `fontspec` (issue #98)

## [v2.1d] - 2010-11-14

### Fixed
- Apply options for units when in free-standing mode (issue #97)
- Typo in v1 configuration file

## [v2.1c] - 2010-11-14

### Added
- Choice `text` for `qualifier-mode` option (issue #95)

### Changed
- Discourage line break between number and unit even when it is permitted
  (issue #92)
- Ensure that lists can break across lines
- Restrict range and list functions to text mode
- Auto-detect math mode in tables (issue #94)

## [v2.1b] - 2010-11-05

### Changed
- Improve hyphen to minus correction (issue #89)

### Fixed
- One wrong variable used (issue #90)

## [v2.1a] - 2010-11-05

### Changed
- Internal `expl3` improvements

### Fixed
- Print list separators in text mode (issue #87)
- Add in some missing `\ensuremath` statements (issue #88)

## [v2.1] - 2010-10-31

### Added
- Option `copy-complex-root` (issue #63)
- Option `table-align-exponent` and `table-align-uncertainty` (issue #60)
- Option `power-font` (issue #69)
- Option `scientific-notation` (issue #11)
- Option `round-integer-to-decimal` (issue #55)
- Option `input-comparators` (issue #16)
- Option `round-minimum` (issue #17)

### Changed
- Internal `expl3` improvements

### Fixed
- Correct abbreviation for `\kelvin`
- Bug in conversion code for 'large' numbers to scientific format
- Bug with rounding check if decimal part is empty
- Remove decimal marker if rounding gives an empty decimal part

## [v2.0y] - 2010-10-11

### Fixed
- Bug with `tight-spacing` option

## [v2.0x] - 2010-10-05

### Fixed
- Make single-prefix detection work with non-symbolic prefixes
  (issue #81)

## [v2.0w] - 2010-09-29

### Fixed
- Problem with REVTeX and S columns (issue #80)

## [v2.0v] - 2010-09-26

### Changed
- Track `expl3` changes

## [v2.0u] - 2010-09-14

### Fixed
- Issue with `textpos` (issue #74)
- Prevent infinite loop when using `\SI{}{...}` (issue #78)

## [v2.0t] - 2010-08-24

### Fixed
- Correct `\exp_after:wN` (issue #77)

## [v2.0s] - 2010-08-12

### Added
- Demo for headers in tables

### Fixed
- Bug in rounding code for zero decimal place (issue #76)

## [v2.0r] - 2010-08-02

### Fixed
- Bug in v1 `decimalsymbol` emulation

## [v2.0q] - 2010-07-29

### Fixed
- Errors with free-standing units

## [v2.0p] - 2010-07-28

### Fixed
- Shape detection

## [v2.0o] - 2010-07-22

### Added
- Extend detect-italic to slanted shape (issue #73)

## [v2.0n] - 2010-07-15

### Added
- Various abbreviations

### Changed
- Documentation section on tables where rows have different units

## [v2.0m] - 2010-07-09

### Added
- Option `locale` and notes on use with `babel`

## [v2.0l] - 2010-07-07

### Changed
- Updated documentation for v1 options

### Fixed
- Move test for `\fg` so that it works independent of `babel` load order

## [v2.0k] - 2010-07-04

### Fixed
- Issue with `babel` (issue #68)

## [v2.0j] - 2010-06-30

### Changed
- Force `input-symbols` to print in math mode

### Fixed
- Correct appearance of `\hartree`

## [v2.0i] - 2010-06-29

### Fixed
-  Two missed `_` from `expl3` style switch (issue #67)

## [v2.0h] - 2010-06-29

### Fixed
- Issue with localisation

## [v2.0g] - 2010-06-28

### Added
- First approach to localisation (issue #61)
- Restore 'bracket-numbers' option (issue #65)

### Changed
- Alter complex root output so that it always resets the math font

### Fixed
- Bracket complex numbers in numerator of quotient (issue #66)

## [v2.0f] - 2010-06-27

### Fixed
- Spacing with `\times` in text mode (issue #64)

## [v2.0e] - 2010-06-20

### Fixed
- Move save/restore of `\pm` (issue #58)

## [v2.0d] - 2010-06-10

### Changed
- Document use of `\cr` in tables (issue #53)
- Internal `expl3` improvements

### Fixed
- `table-exponent` option's handling of exponent signs (issue #56)

## [v2.0c] - 2010-06-07

### Changed
- Improve emulation of v1 material
- Performance improvements
- Internal `expl3` improvements
- Move `\requiresiconfigs` to v1 file

### Fixed
- Test for bottoming-out units and ensure that any 'hidden' literal units
  print (issue #50)

## [v2.0b] - 2010-06-01

### Added
- Complete emulation of v1 options

## [v2.0a] - 2010-05-28

### Changed
- Allow `\SendSettingsToPgf` in the document body
- Several improvements in v1 emulation

### Fixed
- Allow `\newunit` to take optional arguments (issue #45)

## v2.0

### Added
- Complete re-write of package to add many new features

## v1.0

### Added
- First official release

## v0.6

### Added
- First public testing release (as `si`)

[Unreleased]: https://github.com/josephwright/siunitx/compare/v3.0.10...HEAD
[v3.0.10]: https://github.com/josephwright/siunitx/compare/v3.0.9...v3.0.10
[v3.0.9]: https://github.com/josephwright/siunitx/compare/v3.0.8...v3.0.9
[v3.0.8]: https://github.com/josephwright/siunitx/compare/v3.0.7...v3.0.8
[v3.0.7]: https://github.com/josephwright/siunitx/compare/v3.0.6...v3.0.7
[v3.0.6]: https://github.com/josephwright/siunitx/compare/v3.0.5...v3.0.6
[v3.0.5]: https://github.com/josephwright/siunitx/compare/v3.0.4...v3.0.5
[v3.0.4]: https://github.com/josephwright/siunitx/compare/v3.0.3...v3.0.4
[v3.0.3]: https://github.com/josephwright/siunitx/compare/v3.0.2...v3.0.3
[v3.0.2]: https://github.com/josephwright/siunitx/compare/v3.0.1...v3.0.2
[v3.0.1]: https://github.com/josephwright/siunitx/compare/v3.0.0...v3.0.1
[v3.0.0]: https://github.com/josephwright/siunitx/compare/v2.8e...v3.0.0
[v2.8e]: https://github.com/josephwright/siunitx/compare/v2.8d...v2.8e
[v2.8d]: https://github.com/josephwright/siunitx/compare/v2.8c...v2.8d
[v2.8c]: https://github.com/josephwright/siunitx/compare/v2.8b...v2.8c
[v2.8b]: https://github.com/josephwright/siunitx/compare/v2.8a...v2.8b
[v2.8a]: https://github.com/josephwright/siunitx/compare/v2.8...v2.8a
[v2.8]: https://github.com/josephwright/siunitx/compare/v2.7u...v2.8
[v2.7v]: https://github.com/josephwright/siunitx/compare/v2.7u...v2.7v
[v2.7u]: https://github.com/josephwright/siunitx/compare/v2.7t...v2.7u
[v2.7t]: https://github.com/josephwright/siunitx/compare/v2.7s...v2.7t
[v2.7s]: https://github.com/josephwright/siunitx/compare/v2.7r...v2.7s
[v2.7r]: https://github.com/josephwright/siunitx/compare/v2.7q...v2.7r
[v2.7q]: https://github.com/josephwright/siunitx/compare/v2.7p...v2.7q
[v2.7p]: https://github.com/josephwright/siunitx/compare/v2.7o...v2.7p
[v2.7o]: https://github.com/josephwright/siunitx/compare/v2.7n...v2.7o
[v2.7n]: https://github.com/josephwright/siunitx/compare/v2.7m...v2.7n
[v2.7m]: https://github.com/josephwright/siunitx/compare/v2.7l...v2.7m
[v2.7l]: https://github.com/josephwright/siunitx/compare/v2.7k...v2.7l
[v2.7k]: https://github.com/josephwright/siunitx/compare/v2.7j...v2.7k
[v2.7j]: https://github.com/josephwright/siunitx/compare/v2.7i...v2.7j
[v2.7i]: https://github.com/josephwright/siunitx/compare/v2.7h...v2.7i
[v2.7h]: https://github.com/josephwright/siunitx/compare/v2.7g...v2.7h
[v2.7g]: https://github.com/josephwright/siunitx/compare/v2.7f...v2.7g
[v2.7f]: https://github.com/josephwright/siunitx/compare/v2.7e...v2.7f
[v2.7e]: https://github.com/josephwright/siunitx/compare/v2.7d...v2.7e
[v2.7d]: https://github.com/josephwright/siunitx/compare/v2.7c...v2.7d
[v2.7c]: https://github.com/josephwright/siunitx/compare/v2.7b...v2.7c
[v2.7b]: https://github.com/josephwright/siunitx/compare/v2.7a...v2.7b
[v2.7a]: https://github.com/josephwright/siunitx/compare/v2.7...v2.7a
[v2.7]: https://github.com/josephwright/siunitx/compare/v2.6s...v2.7
[v2.6s]: https://github.com/josephwright/siunitx/compare/v2.6r...v2.6s
[v2.6r]: https://github.com/josephwright/siunitx/compare/v2.6q...v2.6r
[v2.6q]: https://github.com/josephwright/siunitx/compare/v2.6p...v2.6q
[v2.6p]: https://github.com/josephwright/siunitx/compare/v2.6o...v2.6p
[v2.6o]: https://github.com/josephwright/siunitx/compare/v2.6n...v2.6o
[v2.6n]: https://github.com/josephwright/siunitx/compare/v2.6m...v2.6n
[v2.6m]: https://github.com/josephwright/siunitx/compare/v2.6l...v2.6m
[v2.6l]: https://github.com/josephwright/siunitx/compare/v2.6k...v2.6l
[v2.6k]: https://github.com/josephwright/siunitx/compare/v2.6j...v2.6k
[v2.6j]: https://github.com/josephwright/siunitx/compare/v2.6i...v2.6j
[v2.6i]: https://github.com/josephwright/siunitx/compare/v2.6h...v2.6i
[v2.6h]: https://github.com/josephwright/siunitx/compare/v2.6g...v2.6h
[v2.6g]: https://github.com/josephwright/siunitx/compare/v2.6f...v2.6g
[v2.6f]: https://github.com/josephwright/siunitx/compare/v2.6e...v2.6f
[v2.6e]: https://github.com/josephwright/siunitx/compare/v2.6d...v2.6e
[v2.6d]: https://github.com/josephwright/siunitx/compare/v2.6c...v2.6d
[v2.6c]: https://github.com/josephwright/siunitx/compare/v2.6b...v2.6c
[v2.6b]: https://github.com/josephwright/siunitx/compare/v2.6a...v2.6b
[v2.6a]: https://github.com/josephwright/siunitx/compare/v2.6...v2.6a
[v2.6]: https://github.com/josephwright/siunitx/compare/v2.5s...v2.6
[v2.5s]: https://github.com/josephwright/siunitx/compare/v2.5r...v2.5s
[v2.5r]: https://github.com/josephwright/siunitx/compare/v2.5q...v2.5r
[v2.5q]: https://github.com/josephwright/siunitx/compare/v2.5p...v2.5q
[v2.5p]: https://github.com/josephwright/siunitx/compare/v2.5o...v2.5p
[v2.5o]: https://github.com/josephwright/siunitx/compare/v2.5n...v2.5o
[v2.5n]: https://github.com/josephwright/siunitx/compare/v2.5m...v2.5n
[v2.5m]: https://github.com/josephwright/siunitx/compare/v2.5l...v2.5m
[v2.5l]: https://github.com/josephwright/siunitx/compare/v2.5k...v2.5l
[v2.5k]: https://github.com/josephwright/siunitx/compare/v2.5j...v2.5k
[v2.5j]: https://github.com/josephwright/siunitx/compare/v2.5i...v2.5j
[v2.5i]: https://github.com/josephwright/siunitx/compare/v2.5h...v2.5i
[v2.5h]: https://github.com/josephwright/siunitx/compare/v2.5g...v2.5h
[v2.5g]: https://github.com/josephwright/siunitx/compare/v2.5f...v2.5g
[v2.5f]: https://github.com/josephwright/siunitx/compare/v2.5e...v2.5f
[v2.5e]: https://github.com/josephwright/siunitx/compare/v2.5d...v2.5e
[v2.5d]: https://github.com/josephwright/siunitx/compare/v2.5c...v2.5d
[v2.5c]: https://github.com/josephwright/siunitx/compare/v2.5b...v2.5c
[v2.5b]: https://github.com/josephwright/siunitx/compare/v2.5a...v2.5b
[v2.5a]: https://github.com/josephwright/siunitx/compare/v2.5...v2.5a
[v2.5]: https://github.com/josephwright/siunitx/compare/v2.4n...v2.5
[v2.4n]: https://github.com/josephwright/siunitx/compare/v2.4m...v2.4n
[v2.4m]: https://github.com/josephwright/siunitx/compare/v2.4l...v2.4m
[v2.4l]: https://github.com/josephwright/siunitx/compare/v2.4k...v2.4l
[v2.4k]: https://github.com/josephwright/siunitx/compare/v2.4j...v2.4k
[v2.4j]: https://github.com/josephwright/siunitx/compare/v2.4i...v2.4j
[v2.4i]: https://github.com/josephwright/siunitx/compare/v2.4h...v2.4i
[v2.4h]: https://github.com/josephwright/siunitx/compare/v2.4g...v2.4h
[v2.4g]: https://github.com/josephwright/siunitx/compare/v2.4f...v2.4g
[v2.4f]: https://github.com/josephwright/siunitx/compare/v2.4e...v2.4f
[v2.4e]: https://github.com/josephwright/siunitx/compare/v2.4d...v2.4e
[v2.4d]: https://github.com/josephwright/siunitx/compare/v2.4c...v2.4d
[v2.4c]: https://github.com/josephwright/siunitx/compare/v2.4b...v2.4c
[v2.4b]: https://github.com/josephwright/siunitx/compare/v2.4a...v2.4b
[v2.4a]: https://github.com/josephwright/siunitx/compare/v2.4...v2.4a
[v2.4]: https://github.com/josephwright/siunitx/compare/v2.3h...v2.4
[v2.3h]: https://github.com/josephwright/siunitx/compare/v2.3g...v2.3h
[v2.3g]: https://github.com/josephwright/siunitx/compare/v2.3f...v2.3g
[v2.3f]: https://github.com/josephwright/siunitx/compare/v2.3e...v2.3f
[v2.3e]: https://github.com/josephwright/siunitx/compare/v2.3d...v2.3e
[v2.3d]: https://github.com/josephwright/siunitx/compare/v2.3c...v2.3d
[v2.3c]: https://github.com/josephwright/siunitx/compare/v2.3b...v2.3c
[v2.3b]: https://github.com/josephwright/siunitx/compare/v2.3a...v2.3b
[v2.3a]: https://github.com/josephwright/siunitx/compare/v2.3...v2.3a
[v2.3]: https://github.com/josephwright/siunitx/compare/v2.2l...v2.3
[v2.2l]: https://github.com/josephwright/siunitx/compare/v2.2k...v2.2l
[v2.2k]: https://github.com/josephwright/siunitx/compare/v2.2j...v2.2k
[v2.2j]: https://github.com/josephwright/siunitx/compare/v2.2i...v2.2j
[v2.2i]: https://github.com/josephwright/siunitx/compare/v2.2h...v2.2i
[v2.2h]: https://github.com/josephwright/siunitx/compare/v2.2g...v2.2h
[v2.2g]: https://github.com/josephwright/siunitx/compare/v2.2f...v2.2g
[v2.2f]: https://github.com/josephwright/siunitx/compare/v2.2e...v2.2f
[v2.2e]: https://github.com/josephwright/siunitx/compare/v2.2d...v2.2e
[v2.2d]: https://github.com/josephwright/siunitx/compare/v2.2c...v2.2d
[v2.2c]: https://github.com/josephwright/siunitx/compare/v2.2b...v2.2c
[v2.2b]: https://github.com/josephwright/siunitx/compare/v2.2a...v2.2b
[v2.2a]: https://github.com/josephwright/siunitx/compare/v2.2...v2.2a
[v2.2]: https://github.com/josephwright/siunitx/compare/v2.1p...v2.2
[v2.1p]: https://github.com/josephwright/siunitx/compare/v2.1o...v2.1p
[v2.1o]: https://github.com/josephwright/siunitx/compare/v2.1n...v2.1o
[v2.1n]: https://github.com/josephwright/siunitx/compare/v2.1m...v2.1n
[v2.1m]: https://github.com/josephwright/siunitx/compare/v2.1l...v2.1m
[v2.1l]: https://github.com/josephwright/siunitx/compare/v2.1k...v2.1l
[v2.1k]: https://github.com/josephwright/siunitx/compare/v2.1j...v2.1k
[v2.1j]: https://github.com/josephwright/siunitx/compare/v2.1i...v2.1j
[v2.1i]: https://github.com/josephwright/siunitx/compare/v2.1h...v2.1i
[v2.1h]: https://github.com/josephwright/siunitx/compare/v2.1g...v2.1h
[v2.1g]: https://github.com/josephwright/siunitx/compare/v2.1f...v2.1g
[v2.1f]: https://github.com/josephwright/siunitx/compare/v2.1e...v2.1f
[v2.1e]: https://github.com/josephwright/siunitx/compare/v2.1d...v2.1e
[v2.1d]: https://github.com/josephwright/siunitx/compare/v2.1c...v2.1d
[v2.1c]: https://github.com/josephwright/siunitx/compare/v2.1b...v2.1c
[v2.1b]: https://github.com/josephwright/siunitx/compare/v2.1a...v2.1b
[v2.1a]: https://github.com/josephwright/siunitx/compare/v2.1...v2.1a
[v2.1]: https://github.com/josephwright/siunitx/compare/v2.0y...v2.1
[v2.0y]: https://github.com/josephwright/siunitx/compare/v2.0x...v2.0y
[v2.0x]: https://github.com/josephwright/siunitx/compare/v2.0w...v2.0x
[v2.0w]: https://github.com/josephwright/siunitx/compare/v2.0v...v2.0w
[v2.0v]: https://github.com/josephwright/siunitx/compare/v2.0u...v2.0v
[v2.0u]: https://github.com/josephwright/siunitx/compare/v2.0t...v2.0u
[v2.0t]: https://github.com/josephwright/siunitx/compare/v2.0s...v2.0t
[v2.0s]: https://github.com/josephwright/siunitx/compare/v2.0r...v2.0s
[v2.0r]: https://github.com/josephwright/siunitx/compare/v2.0q...v2.0r
[v2.0q]: https://github.com/josephwright/siunitx/compare/v2.0p...v2.0q
[v2.0p]: https://github.com/josephwright/siunitx/compare/v2.0o...v2.0p
[v2.0o]: https://github.com/josephwright/siunitx/compare/v2.0n...v2.0o
[v2.0n]: https://github.com/josephwright/siunitx/compare/v2.0m...v2.0n
[v2.0m]: https://github.com/josephwright/siunitx/compare/v2.0l...v2.0m
[v2.0l]: https://github.com/josephwright/siunitx/compare/v2.0k...v2.0l
[v2.0k]: https://github.com/josephwright/siunitx/compare/v2.0j...v2.0k
[v2.0j]: https://github.com/josephwright/siunitx/compare/v2.0i...v2.0j
[v2.0i]: https://github.com/josephwright/siunitx/compare/v2.0h...v2.0i
[v2.0h]: https://github.com/josephwright/siunitx/compare/v2.0g...v2.0h
[v2.0g]: https://github.com/josephwright/siunitx/compare/v2.0f...v2.0g
[v2.0f]: https://github.com/josephwright/siunitx/compare/v2.0e...v2.0f
[v2.0e]: https://github.com/josephwright/siunitx/compare/v2.0d...v2.0e
[v2.0d]: https://github.com/josephwright/siunitx/compare/v2.0c...v2.0d
[v2.0c]: https://github.com/josephwright/siunitx/compare/v2.0b...v2.0c
[v2.0b]: https://github.com/josephwright/siunitx/compare/v2.0a...v2.0b
[v2.0a]: https://github.com/josephwright/siunitx/compare/v2.0...v2.0a
