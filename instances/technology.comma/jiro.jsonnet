local jiro = import '../../templates/jiro.libsonnet';

jiro.newJiro("technology.comma", "Eclipse CommaSuite") {
  "config.json"+: {
    jenkins+: {
      permissions:
        // workaround to avoid errors, when the Gerrit plugin is disabled
        permissionsTemplates.projectPermissions($.project.unixGroupName, permissionsTemplates.committerPermissionsList),
    },
  },
}
