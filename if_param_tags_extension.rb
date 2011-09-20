require 'radiant-if_param_tags-extension'
class IfParamTagsExtension < Radiant::Extension
  version RadiantIfParamTagsExtension::VERSION
  description RadiantIfParamTagsExtension::DESCRIPTION
  url RadiantIfParamTagsExtension::URL

  def activate
    Page.send :include, IfParamTags
  end
end
