# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Option `allow-quantity-breaks`
- Option `angle-mode`
- Option `drop-exponent`
- Option `drop-uncertainty`
- Option `drop-zero-decimal`
- Option `evaluate-expression`
- Option `exponent-mode`
- Option `expression`
- Option `fill-arc-degrees`
- Option `fill-arc-minutes`
- Option `fill-arc-seconds`
- Option `font-command`
- Option `fraction-command`
- Option `list-mode`
- Option `minimum-decimal-digits`
- Option `minimum-integer-digits`
- Option `overwrite-commands`
- Option `prefix-mode`
- Option `print-implicit-plus`
- Option `print-unity-mantissa`
- Option `print-zero-exponent`
- Option `product-mode`
- Option `product-phrase`
- Option `product-symbol`
- Option `qualifier-phrase`
- Option `quantity-product`
- Option `range-mode`
- Option `round-pad`
- Option `number-angle-product`
- Option `number-close-bracket`
- Option `number-open-bracket`
- Option `propagate-math-font`
- Option `reset-math-version`
- Option `reset-text-family`
- Option `reset-text-series`
- Option `reset-text-shape`
- Option `table-align-text-after`
- Option `table-align-text-before`
- Option `table-alignment-mode`
- Option `text-family-to-math`
- Option `text-weight-to-math`
- Option `track-explicit-plus`
- Option setting `mode = match`
- Option setting `number-mode = match`
- Option setting `per-mode = power-positive-first`
- Option setting `qualifier-mode = bracket`
- Option setting `qualifier-mode = phrase`
- Option setting `qualifier-mode = combine`
- Option setting `text-mode = match`
- Option setting `unit-mode = match`

### Changed
- Modular re-write to provide code-level API

### Deprecated
- `\DeclareSIPrePower`
- `\DeclareSIPostPower`
- Option `add-decimal-zero`
- Option `allow-number-unit-break`
- Option `add-arc-degree-zero`
- Option `add-arc-minute-zero`
- Option `add-arc-second-zero`
- Option `close-bracket`
- Option `explicit-sign`
- Option `fraction-function`
- Option `omit-uncertainty`
- Option `open-bracket`
- Option `overwrite-functions`
- Option `number-angle-product`
- Option `number-unit-product`
- Option `prefixes-as-symbols`
- Option `retain-explicit-plus`
- Option `retain-unity-mantissa`
- Option `retain-zero-exponent`
- Option `scientific-notation`
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
- Option `zero-decimal-to-integer`
- Option setting `per-mode = reciprocal`
- Option setting `per-mode = reciprocal-positive-first`
- Option setting `qualifier-mode = brackets`
- Option setting `qualifier-mode = space`
- Option setting `qualifier-mode = text`
- Option setting `table-number-alignment = center-decimal-marker`

### Removed
- Option `add-integer-zero`
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
- Option `literal-superscript-as-power`
- Option `math-rm`
- Option `math-sf`
- Option `math-tt`
- Option `number-math-rm`
- Option `number-math-sf`
- Option `number-math-tt`
- Option `number-text-rm`
- Option `number-text-sf`
- Option `number-text-tt`
- Option `table-unit-alignment`
- Option `text-rm`
- Option `text-sf`
- Option `text-tt`
- Option `unit-math-rm`
- Option `unit-math-sf`
- Option `unit-math-tt`
- Option `unit-text-rm`
- Option `unit-text-sf`
- Option `unit-text-tt`

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
- Use `\mathord for tight spacing on 'in line' exponent (issue #257)

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

## [v2.0]

### Added
- Complete re-write of package to add many new features

## [v1.0]

### Added
- First official release

## [v0.6]

### Added
- First public testing release (as `si`)

[Unreleased]: https://github.com/josephwright/siunitx/compare/v2.7t...HEAD
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
[v2.4]: https://github.com/josephwright/siunitx/compare/v2.4h...v2.4
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
