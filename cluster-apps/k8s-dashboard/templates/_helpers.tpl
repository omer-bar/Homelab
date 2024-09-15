{{- define "k8s.hostname" -}}
  {{- printf "k8s.%s.eryx.pro" .Values.cluster -}}
{{- end -}}

{{- define "k8s.secretname" -}}
  {{- "eryx-pro-tls" -}}
{{- end -}}