{{- define "argocd.hostname" -}}
  {{- printf "argocd.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "argocd.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}