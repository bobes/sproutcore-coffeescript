SC::ManifestEntry.send :remove_const, :BUILD_DIRECTIVES_REGEX
SC::ManifestEntry::BUILD_DIRECTIVES_REGEX = /(sc_require|require|sc_resource)[\( ]\s*(['"])(.+)['"]/
