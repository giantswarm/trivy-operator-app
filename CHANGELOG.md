# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.3.2] - 2022-12-21

### Changed

- Disable `exposedSecretScannerEnabled` feature by default.
- Updated `scannerReportTTL` to match upstream.

## [0.3.1] - 2022-12-01

### Changed

- Momentarily revert `excludeNamespaces` template from Trivy Operator deployment on upstream chart.

## [0.3.0] - 2022-11-29

### Changed

- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.7.1](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.7.1).

## [0.2.1] - 2022-11-08

### Changed

- Changed `trivy.serverUrl` from `trivy-app` to `trivy` to align with `security-pack` App naming.

## [0.2.0] - 2022-09-26

### Changed

- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.1.9](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.1.9).
- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.2.1](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.2.1).

## [0.1.0] - 2022-08-26

### Added

- Push tagged releases to AWS, Azure, CAPA, and VCD collections.

### Changed

- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.0.7](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.0.7).
- Align Helm charts and values with `starboard-app` as of [version 0.8.0](https://github.com/giantswarm/starboard-app/tree/v0.8.0).
- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.1.0](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.1.0).

## [0.0.1] - 2022-06-14

### Added

- Initial release containing upstream `trivy-operator` [version 0.0.5](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.0.5).

[Unreleased]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.2...HEAD
[0.3.2]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/giantswarm/trivy-operator-app/releases/tag/v0.0.1
