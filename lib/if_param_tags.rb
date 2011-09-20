module IfParamTags
  include Radiant::Taggable
  
  class TagError < StandardError; end
  
  desc %{
    Expands only if the param specified in 'name' is present.
    If the additional 'matches' attribute is given, the param must match that to expand.
    
    *Usage:*
    <pre><code><r:if_param name="foo" [matches="on"]>Foo: <r:param name="foo" /></r:if_param></code></pre>
  }
  tag "if_param" do |tag|
    name = tag.attr["name"]
    raise TagError "A name attribute must be specified for if_param!" if name.blank?
    if params[name]
      regexp = build_regexp_for(tag, "matches") if tag.attr["matches"]
      tag.expand if ( tag.attr["matches"].nil? || params[name].matches(regexp) )
    end
  end
  
  desc %{
    The exact opposite of r:if_param.
    Expands only if the param specified in 'name' is present.
    If the additional 'matches' attribute is given, the param must match that to expand.
    
    *Usage:*
    <pre><code><r:unless_param name="foo" [matches="on"]>Foo: <r:param name="foo" /></r:unless_param></code></pre>
  }
  tag "unless_param" do |tag|
    name = tag.attr["name"]
    raise TagError "A name attribute must be specified for unless_param!" if name.blank?
    if params[name]
      regexp = build_regexp_for(tag, "matches") if tag.attr["matches"]
      tag.expand unless ( tag.attr["matches"].nil? || params[name].matches(regexp) )
    else
      tag.expand
    end
  end
  
  desc %{
    Renders the specified param
    
    *Usage:*
    <pre><code><r:param name="foo" /></code></pre>
  }
  tag "param" do |tag|
    name = tag.attr["name"]
    raise TagError "A name attribute must be specified for param!" if name.blank?
    params[name]
  end
end
