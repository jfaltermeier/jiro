local jiro = import '../../templates/jiro.libsonnet';

jiro.newJiro("ee4j.jacc", "Jakarta Authorizaion") {
  "config.json"+: {
    jenkins+: {
      plugins+: [
        "copyartifact",
      ],
    },
  }
}
