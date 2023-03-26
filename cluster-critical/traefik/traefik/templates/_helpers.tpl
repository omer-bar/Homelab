{{- define "traefik.hostname" -}}
  {{- printf "traefik.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "traefik.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}
