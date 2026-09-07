# trivy-operator

A Giant Swarm App for trivy-operator, the cluster security tool from Aqua Security.

**Homepage:** <https://github.com/giantswarm/trivy-operator-app>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Giant Swarm applications team |  | <https://github.com/giantswarm/trivy-operator-app> |

## Source Code

* <https://github.com/aquasecurity/trivy-operator>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
|  | trivy-operator | 0.36.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| name | string | `"trivy-operator"` |  |
| serviceType | string | `"managed"` |  |
| global | object | `{"image":{"registry":"gsoci.azurecr.io"},"podSecurityStandards":{"enforced":true}}` | global values provide a centralized configuration for 'image.registry', reducing the potential for errors. If left blank, the chart will default to the individually set 'image.registry' values |
| image.registry | string | `"gsoci.azurecr.io"` |  |
| networkPolicy.enabled | bool | `false` |  |
| crds.image.tag | string | `"1.24.1"` |  |
| crds.install | bool | `true` |  |
| crds.resources.requests.cpu | string | `"100m"` |  |
| crds.resources.requests.memory | string | `"256Mi"` |  |
| crds.resources.limits.cpu | string | `"500m"` |  |
| crds.resources.limits.memory | string | `"512Mi"` |  |
| podSecurityContext.runAsNonRoot | bool | `true` |  |
| podSecurityContext.runAsUser | int | `10000` |  |
| podSecurityContext.runAsGroup | int | `10000` |  |
| podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| securityContext.allowPrivilegeEscalation | bool | `false` |  |
| securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| securityContext.privileged | bool | `false` |  |
| securityContext.readOnlyRootFilesystem | bool | `true` |  |
| securityContext.runAsNonRoot | bool | `true` |  |
| securityContext.runAsUser | int | `10000` |  |
| securityContext.runAsGroup | int | `10000` |  |
| securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| kyvernoPolicyExceptions.enabled | bool | `true` |  |
| kyvernoPolicyExceptions.namespace | string | `"giantswarm"` |  |
| managedBy | string | `"Helm"` |  |
| ciliumNetworkPolicy.enabled | bool | `true` |  |
| ciliumNetworkPolicy.scanJobExtraEgress.enabled | bool | `false` |  |
| ciliumNetworkPolicy.scanJobExtraEgress.dnsSelector.rules | list | `[]` |  |
| ciliumNetworkPolicy.scanJobExtraEgress.fqdnsConnection.port | string | `"443"` |  |
| ciliumNetworkPolicy.scanJobExtraEgress.fqdnsConnection.protocol | string | `"TCP"` |  |
| ciliumNetworkPolicy.scanJobExtraEgress.fqdnsConnection.rules | list | `[]` |  |
| trivyServiceName | string | `"trivy"` |  |
| trivyServicePort | int | `4954` |  |
| verticalPodAutoscaler.trivyOperator.enabled | bool | `true` |  |
| verticalPodAutoscaler.trivyOperator.containerPolicies | object | `{}` |  |
| trivy-operator.compliance.cron | string | `"* */6 * * *"` |  |
| trivy-operator.compliance.reportType | string | `"summary"` |  |
| trivy-operator.operator.sbomGenerationEnabled | bool | `false` | the flag to enable sbom generation |
| trivy-operator.operator.configAuditScannerEnabled | bool | `false` |  |
| trivy-operator.operator.rbacAssessmentScannerEnabled | bool | `false` |  |
| trivy-operator.operator.infraAssessmentScannerEnabled | bool | `false` |  |
| trivy-operator.operator.clusterComplianceEnabled | bool | `false` |  |
| trivy-operator.operator.exposedSecretScannerEnabled | bool | `false` |  |
| trivy-operator.operator.scannerReportTTL | string | `"168h"` |  |
| trivy-operator.operator.vulnerabilityScannerScanOnlyCurrentRevisions | bool | `true` |  |
| trivy-operator.operator.scanJobsConcurrentLimit | int | `10` |  |
| trivy-operator.operator.scanJobsRetryDelay | string | `"30s"` |  |
| trivy-operator.image.repository | string | `"giantswarm/trivy-operator"` |  |
| trivy-operator.excludeNamespaces | string | `""` |  |
| trivy-operator.targetNamespaces | string | `""` |  |
| trivy-operator.targetWorkloads | string | `"pod,replicaset,replicationcontroller,statefulset,daemonset,cronjob"` |  |
| trivy-operator.policiesBundle.registry | string | `"gsoci.azurecr.io"` | registry of the policies bundle |
| trivy-operator.policiesBundle.repository | string | `"giantswarm/trivy-checks"` | repository of the policies bundle |
| trivy-operator.policiesBundle.tag | string | `"1.12.1"` | tag version of the policies bundle |
| trivy-operator.nodeCollector.repository | string | `"giantswarm/node-collector"` |  |
| trivy-operator.nodeCollector.tolerations[0].key | string | `"node-role.kubernetes.io/control-plane"` |  |
| trivy-operator.nodeCollector.tolerations[0].operator | string | `"Exists"` |  |
| trivy-operator.nodeCollector.tolerations[0].effect | string | `"NoSchedule"` |  |
| trivy-operator.nodeCollector.tolerations[1].key | string | `"node-role.kubernetes.io/master"` |  |
| trivy-operator.nodeCollector.tolerations[1].operator | string | `"Exists"` |  |
| trivy-operator.nodeCollector.tolerations[1].effect | string | `"NoSchedule"` |  |
| trivy-operator.service.metricsPort | int | `8080` |  |
| trivy-operator.serviceMonitor.enabled | bool | `true` |  |
| trivy-operator.serviceMonitor.interval | string | `"60s"` |  |
| trivy-operator.serviceMonitor.labels."application.giantswarm.io/team" | string | `"shield"` |  |
| trivy-operator.trivyOperator.scanJobTolerations[0].key | string | `"node-role.kubernetes.io/control-plane"` |  |
| trivy-operator.trivyOperator.scanJobTolerations[0].operator | string | `"Exists"` |  |
| trivy-operator.trivyOperator.scanJobTolerations[0].effect | string | `"NoSchedule"` |  |
| trivy-operator.trivyOperator.scanJobTolerations[1].key | string | `"node-role.kubernetes.io/master"` |  |
| trivy-operator.trivyOperator.scanJobTolerations[1].operator | string | `"Exists"` |  |
| trivy-operator.trivyOperator.scanJobTolerations[1].effect | string | `"NoSchedule"` |  |
| trivy-operator.trivyOperator.scanJobPodTemplatePodSecurityContext.runAsUser | int | `10000` |  |
| trivy-operator.trivyOperator.scanJobPodTemplatePodSecurityContext.runAsGroup | int | `10000` |  |
| trivy-operator.trivyOperator.scanJobPodTemplatePodSecurityContext.runAsNonRoot | bool | `true` |  |
| trivy-operator.trivyOperator.scanJobPodTemplatePodSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.allowPrivilegeEscalation | bool | `false` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.capabilities.drop[0] | string | `"ALL"` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.privileged | bool | `false` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.readOnlyRootFilesystem | bool | `true` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.runAsNonRoot | bool | `true` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.runAsUser | int | `10000` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.runAsGroup | int | `10000` |  |
| trivy-operator.trivyOperator.scanJobPodTemplateContainerSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| trivy-operator.podSecurityContext.runAsNonRoot | bool | `true` |  |
| trivy-operator.podSecurityContext.runAsUser | int | `10000` |  |
| trivy-operator.podSecurityContext.runAsGroup | int | `10000` |  |
| trivy-operator.podSecurityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| trivy-operator.securityContext.allowPrivilegeEscalation | bool | `false` |  |
| trivy-operator.securityContext.capabilities.drop[0] | string | `"ALL"` |  |
| trivy-operator.securityContext.privileged | bool | `false` |  |
| trivy-operator.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| trivy-operator.securityContext.runAsNonRoot | bool | `true` |  |
| trivy-operator.securityContext.runAsUser | int | `10000` |  |
| trivy-operator.securityContext.runAsGroup | int | `10000` |  |
| trivy-operator.securityContext.seccompProfile.type | string | `"RuntimeDefault"` |  |
| trivy-operator.serviceAccount.name | string | `"trivy-operator"` |  |
| trivy-operator.trivy.dbRegistry | string | `"gsoci.azurecr.io"` | dbRepository is the repository for the vulnerability database. |
| trivy-operator.trivy.dbRepository | string | `"giantswarm/trivy-db"` |  |
| trivy-operator.trivy.javaDbRegistry | string | `"gsoci.azurecr.io"` | javaDbRegistry is the registry for the Java vulnerability database. |
| trivy-operator.trivy.javaDbRepository | string | `"giantswarm/trivy-java-db"` |  |
| trivy-operator.trivy.image.repository | string | `"giantswarm/trivy"` |  |
| trivy-operator.trivy.mode | string | `"ClientServer"` |  |
| trivy-operator.trivy.serverURL | string | `"http://trivy:4954"` |  |
| trivy-operator.trivy.resources.requests.cpu | string | `"100m"` |  |
| trivy-operator.trivy.resources.requests.memory | string | `"100M"` |  |
| trivy-operator.trivy.resources.limits.cpu | string | `"500m"` |  |
| trivy-operator.trivy.resources.limits.memory | string | `"1G"` |  |
| trivy-operator.trivy.command | string | `"image"` |  |
