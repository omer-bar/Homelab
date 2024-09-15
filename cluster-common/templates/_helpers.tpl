{{/*
Generate the hostname for services.
*/}}
{{- define "cluster-common.hostname" -}}
  {{- printf "%s.%s.eryx.pro" .Release.Name .Values.cluster -}}
{{- end }}

{{/*
Generate the secret name for certificates.
*/}}
{{- define "cluster-common.secretName" -}}
  {{- printf "%s-tls" .Release.Name -}}
{{- end }}
