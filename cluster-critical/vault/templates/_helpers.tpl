{{- define "vault.hostname" -}}
  {{- printf "vault.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "vault.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}