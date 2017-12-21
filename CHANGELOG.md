# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
- Add `CHANGELOG` to the project. It is a file which contains a curated, chronologically ordered list of notable changes for each version of a project

## [0.4.0] - 2017-12-21
### Added
- Allow to change Ingress path in `values.yaml`

## [0.3.1] - 2017-12-21
### Changed
- Default `RACK_ENV` to `deployment` (see <http://www.hezmatt.org/%7Empalmer/blog/2013/10/13/rack_env-its-not-for-you>)

### Fixed
- Fix ingress path. It must have a wildcard character in order to work properly


## [0.3.0] - 2017-12-20
### Added
- Add batch jobs run as hooks to
  - bootstrap Errbit when chart is being installed
  - migrate database when the chart is being upgraded

### Fixed
- Fix environment variable used in `docker-entrypoint.sh`

## 0.2.0 - 2017-12-20
Initial release

[Unreleased]: https://github.com/tmaier/errbit-helm/compare/v0.4.0...HEAD
[0.4.0]: https://github.com/tmaier/errbit-helm/compare/v0.3.1...v0.4.0
[0.3.1]: https://github.com/tmaier/errbit-helm/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/tmaier/errbit-helm/compare/v0.2.0...v0.3.0
