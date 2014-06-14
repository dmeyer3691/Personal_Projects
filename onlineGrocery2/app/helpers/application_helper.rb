module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"]= "display: none"
    end
    attributes["class"]= "col-md-3"
    attributes["id"]= "sidebar"
    attributes["data-spy"]= "affix"    
    content_tag("div", attributes, &block)
  end
  def hidden_div_if2(condition, attributes = {}, &block)
    if condition
      attributes["class"]= "col-md-12"
    else
      attributes["class"]= "col-md-9"
    end
    content_tag("div", attributes, &block)
  end
end
