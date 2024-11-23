# cluster-common/_helpers.tpl
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

{{/*
Generate a standard certificate
*/}}
{{- define "cluster-common.certificate" -}}
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: {{ .Release.Name }}-cert
  namespace: {{ .Release.Namespace }}
spec:
  secretName: {{ include "cluster-common.secretName" . }}
  issuerRef:
    name: le-production
    kind: ClusterIssuer
  commonName: {{ include "cluster-common.hostname" . }}
  dnsNames:
    - {{ include "cluster-common.hostname" . }}
{{- end }}