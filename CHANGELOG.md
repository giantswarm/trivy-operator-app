# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.10.3] - 2024-11-05

### Changed

- Use retagged trivy-db and trivy-java-db images for scan jobs and bundled trivy.

## [0.10.2] - 2024-10-23

### Changed

- Align Trivy versions between Trivy Operator and Trivy to v0.56.1.

## [0.10.1] - 2024-10-03

### Changed

- Allow world access for jobs to fetch policies from OCI.

## [0.10.0] - 2024-08-21

### Changed

- Update `trivy-operator` to upstream version v0.22.0.

## [0.9.1] - 2024-08-13

### Changed

- Detect and use `flowcontrol/v1beta3` API if `v1` is not available.

## [0.9.0] - 2024-06-06

### Changed

- Update `Trivy Operator` to upstream version v0.21.1.

## [0.8.1] - 2024-05-22

### Changed

- Update `flowcontrol.apiserver.k8s.io` to v1.

## [0.8.0] - 2024-05-16

### Changed

- Update `Trivy Operator` to upstream version v0.20.1.

## [0.7.3] - 2024-05-07

### Added

- Add a CiliumNetworkPolicy for `node-collector` jobs.
- Add a Kyverno PolicyException to allow scan containers to run as root when in `filesystem` or `rootfs` mode.

### Changed

- Extend the Kyverno PolicyException for `node-collector` jobs.
- Change the CiliumNetworkPolicy template to allow FQDN/DNS.
- Update `Trivy Operator` to upstream version v0.19.4.

## [0.7.2] - 2024-01-31

### Added

- Added a kyverno-policy-exception for the node-collector job.

## [0.7.1] - 2024-01-31

### Changed

- Bumped `Trivy-Operator` version to `0.18.3`.
- Enabled syncing upstream specs.

## [0.7.0] - 2024-01-25

### Changed

- Update CiliumNetworkPolicy to enable access to port 8080.

## [0.6.0] - 2024-01-25

### Changed

- Changed the CIS PSP to also be used when cluster compliance scanning is enabled.
- Configure `gsoci.azurecr.io` as the default container image registry.
- Enabled service monitor.
- Changed metricsport value from `80` to `8080`.

## [0.5.1] - 2023-12-18

### Changed

- Disable Trivy's SBOM generator by default.

## [0.5.0] - 2023-10-27

### Changed

- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.16.3](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.16.3).

## [0.4.1] - 2023-09-26

### Added

- Add port `1053` to scanner job CiliumNetworkPolicy.

### Removed

- Stop pushing to `openstack-app-collection`.

### Changed

- Replace deprecated toleration `node-role.kubernetes.io/master` with `node-role.kubernetes.io/control-plane` on `CRD` and `Spec` install jobs.

## [0.4.0] - 2023-04-28

### Changed

- Update to upstream [trivy-operator](https://github.com/aquasecurity/trivy-operator) [v0.13.2](https://github.com/aquasecurity/trivy-operator/releases/tag/v0.13.2).

### Added

- Add `Cilium Network Policy` to `trivy-operator`.

## [0.3.7] - 2023-04-11

### Added

- Added `VerticalPodAutoscaler` for `trivy-operator` deployment.
- Added `tag` field to control trivy image versioning.

## [0.3.6] - 2023-03-27

### Changed

- Updated `imageRef` field to `repository` in `values.yaml` to sync with upstream format.

## [0.3.5] - 2023-03-14

### Changed

- Bumped the version of trivy-operator to `v0.12.0`

## [0.3.4] - 2023-02-20

### Changed

- Add conditional templating for `flowcontrol` apiVersion value.

## [0.3.3] - 2023-01-24

### Changed

- Add `handSize` to `PriorityLevelConfiguration` to handle low count scan job concurrency edge cases. 

### Added

- Add `NetworkPolicy` for trivy-operator to ensure it works in namespaces with `deny-all` networkpolicy.

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

[Unreleased]: https://github.com/giantswarm/trivy-operator-app/compare/v0.10.3...HEAD
[0.10.3]: https://github.com/giantswarm/trivy-operator-app/compare/v0.10.2...v0.10.3
[0.10.2]: https://github.com/giantswarm/trivy-operator-app/compare/v0.10.1...v0.10.2
[0.10.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.10.0...v0.10.1
[0.10.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.9.1...v0.10.0
[0.9.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.9.0...v0.9.1
[0.9.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.8.1...v0.9.0
[0.8.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.8.0...v0.8.1
[0.8.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.7.3...v0.8.0
[0.7.3]: https://github.com/giantswarm/trivy-operator-app/compare/v0.7.2...v0.7.3
[0.7.2]: https://github.com/giantswarm/trivy-operator-app/compare/v0.7.1...v0.7.2
[0.7.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.7.0...v0.7.1
[0.7.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.6.0...v0.7.0
[0.6.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.5.1...v0.6.0
[0.5.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.5.0...v0.5.1
[0.5.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.4.1...v0.5.0
[0.4.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.4.0...v0.4.1
[0.4.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.7...v0.4.0
[0.3.7]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.6...v0.3.7
[0.3.6]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.5...v0.3.6
[0.3.5]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.4...v0.3.5
[0.3.4]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.3...v0.3.4
[0.3.3]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.2...v0.3.3
[0.3.2]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/giantswarm/trivy-operator-app/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/giantswarm/trivy-operator-app/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/giantswarm/trivy-operator-app/releases/tag/v0.0.1
