local jiro = import '../../templates/jiro.libsonnet';

jiro.newJiro("technology.openk-platform", "Eclipse openK platform") {
  "config.json"+: {
    jenkins+: {
      plugins+: [
        "jacoco",
      ],
    },
  },
}
