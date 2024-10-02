{{/*
CRD installation helpers used by Giant Swarm.
*/}}
{{- define "trivy-operator.crdInstall" -}}
{{- printf "%s-%s" ( default .Chart.Name .Values.nameOverride | trunc 63 ) "crd-install" | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}

{{/*
The team label here only applies to CRD install resources and is to keep the linter happy until we can set this on upstream charts.
*/}}
{{- define "trivy-operator.CRDInstallAnnotations" -}}
"helm.sh/hook": "pre-install,pre-upgrade"
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded,hook-failed"
application.giantswarm.io/team: {{ index .Chart.Annotations "application.giantswarm.io/team" | quote }}
{{- end -}}

{{/* Create a label which can be used to select any orphaned crd-install hook resources */}}
{{- define "trivy-operator.CRDInstallSelector" -}}
{{- printf "%s" "crd-install-hook" -}}
{{- end -}}

{{/*
Spec post-install job used to apply upstream specs which depend on CRDs being installed first.
*/}}
{{- define "trivy-operator.specInstall" -}}
{{- printf "%s-%s" ( default .Chart.Name .Values.nameOverride | trunc 63 ) "spec-install" | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}

{{- define "trivy-operator.specInstallAnnotations" -}}
"helm.sh/hook": "post-install,post-upgrade"
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded,hook-failed"
{{- end -}}

{{/* Create a label which can be used to select any orphaned spec-install hook resources */}}
{{- define "trivy-operator.specInstallSelector" -}}
{{- printf "%s" "spec-install-hook" -}}
{{- end -}}

{{/* vim: set filetype=mustache: */}}
{{/* Expand the name of the chart. */}}
{{- define "trivy-operator-helpers.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 50 | trimSuffix "-" -}}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
The components in this chart create additional resources that expand the longest created name strings.
The longest name that gets created adds and extra 37 characters, so truncation should be 63-35=26.
*/}}
{{- define "trivy-operator-helpers.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 26 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 26 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 26 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Allow the release namespace to be overridden for multi-namespace deployments in combined charts
*/}}
{{- define "trivy-operator-helpers.namespace" -}}
  {{- if .Values.namespaceOverride -}}
    {{- .Values.namespaceOverride -}}
  {{- else -}}
    {{- .Release.Namespace -}}
  {{- end -}}
{{- end -}}

{{/* Create chart name and version as used by the chart label. */}}
{{- define "trivy-operator-helpers.chartref" -}}
{{- (replace "+" "_" .Chart.Version | printf "%s-%s" .Chart.Name) | trunc 63 -}}
{{- end }}

{{/* Generate basic labels */}}
{{- define "trivy-operator-helpers.labels" -}}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: "{{ .Chart.Version }}"
app.kubernetes.io/part-of: {{ template "trivy-operator-helpers.name" . }}
chart: {{ template "trivy-operator-helpers.chartref" . }}
release: {{ $.Release.Name | quote }}
heritage: {{ $.Release.Service | quote }}
{{- if .Values.commonLabels}}
{{ toYaml .Values.commonLabels }}
{{- end }}
{{- end }}

{{/*
Defines NetworkPolicy name prefix
*/}}
{{- define "trivy-operator.networkPolicy" -}}
{{- printf "%s" ( default .Chart.Name .Values.nameOverride | trunc 63 ) | replace "+" "_" | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Trivy operator selector labels
*/}}
{{- define "labels.selector" -}}
app.kubernetes.io/name: {{ include "name" . | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end -}}

{{/*
Trivy operator scanner job selector labels
*/}}
{{- define "scannerjob.labels.selector" -}}
vulnerabilityReport.scanner: Trivy
{{- end -}}
