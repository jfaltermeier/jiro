local jiro = import '../../templates/jiro.libsonnet';

jiro.newJiro("technology.cbi", "Eclipse CBI") {
  "config.json"+: {
    jenkins+: {
      version: "2.303.3",
      staticAgentCount: 3,
      plugins+: [
        "basic-branch-build-strategies",
        "cloudbees-jenkins-advisor",
        "cloudbees-disk-usage-simple",
        "embeddable-build-status",
        "favorite",
        "gradle",
        "handy-uri-templates-2-api",
        "htmlpublisher",
        "jenkins-design-language",
        "mail-watcher-plugin",
        "mask-passwords",
        "metrics",
        "prometheus",
        "pubsub-light",
        "slack",
        "sse-gateway",
        "trilead-api",
      ],
    },
    gradle+: {
      generate: true,
    },
  },
}
