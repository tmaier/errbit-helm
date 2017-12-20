{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "errbit-helm.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "errbit-helm.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified mongodb name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "mongodb.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name "mongodb" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Return the mongodb host
If the mongodb dependency is enabled, it will return the mongodb host
Otherwise it will return the set value
*/}}
{{- define "errbit-helm.mongodbHost" -}}
{{- if .Values.mongodb.enabled -}}
{{- template "mongodb.fullname" . -}}
{{- else -}}
{{- required "Value mongodbHost must be set" .Values.mongodbHost -}}
{{- end -}}
{{- end -}}

{{/*
Return the mongodb port
It will return the set value
*/}}
{{- define "errbit-helm.mongodbPort" -}}
{{- .Values.mongodbPort -}}
{{- end -}}

{{/*
Return the mongodb username
If the mongodb dependency is enabled, it will return the mongodb username
Otherwise it will return the set value
*/}}
{{- define "errbit-helm.mongodbUsername" -}}
{{- if .Values.mongodb.enabled -}}
{{- .Values.mongodb.mongodbUsername -}}
{{- else -}}
{{- default "" .Values.mongodbUsername -}}
{{- end -}}
{{- end -}}

{{/*
Return the mongodb database
If the mongodb dependency is enabled, it will return the mongodb database
Otherwise it will return the set value
*/}}
{{- define "errbit-helm.mongodbDatabase" -}}
{{- if .Values.mongodb.enabled -}}
{{- .Values.mongodb.mongodbDatabase -}}
{{- else -}}
{{- required "Value mongodbDatabase must be set" .Values.mongodbDatabase -}}
{{- end -}}
{{- end -}}
