{{- define "grafana.hostname" -}}
  {{- printf "grafana.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "grafana.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}