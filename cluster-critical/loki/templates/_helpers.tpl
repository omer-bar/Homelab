{{- define "loki.hostname" -}}
  {{- printf "loki.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "loki.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}
