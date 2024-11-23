{{- define "vault.hostname" -}}
  {{- printf "vault.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "vault.secretName" -}}
  {{- printf "vault-tls" -}}
{{- end -}}