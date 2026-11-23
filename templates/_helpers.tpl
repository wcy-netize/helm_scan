{{/*
Expand the chart name.
*/}}
{{- define "aikido-container-scan-test.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a release-qualified name.
*/}}
{{- define "aikido-container-scan-test.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "aikido-container-scan-test.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Common labels for chart resources.
*/}}
{{- define "aikido-container-scan-test.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
app.kubernetes.io/name: {{ include "aikido-container-scan-test.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Labels used to select the application pods.
*/}}
{{- define "aikido-container-scan-test.selectorLabels" -}}
app.kubernetes.io/name: {{ include "aikido-container-scan-test.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
