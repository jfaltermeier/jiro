local jiro = import '../../templates/jiro.libsonnet';

jiro.newJiro("ecd.theia", "Eclipse Theia") {
  "config.json"+: {
    jenkins+: {
      plugins+: [
        "mail-watcher-plugin",
        "pipeline-utility-steps",
      ],
    },
  },
}