# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [v3.0.0]

### Added

- Modular re-write to provide code-level API

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