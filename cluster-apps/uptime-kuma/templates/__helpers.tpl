{{- define "uptime.hostname" -}}
  {{- printf "uptime.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "uptime.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}