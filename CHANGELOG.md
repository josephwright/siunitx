# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a
Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

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
