class CatAPI::Image

  def initialize(xml)
    xml.elements.map do |attribute|
      instance_variable_set "@#{attribute.node_name}", attribute.text
      CatAPI::Image.class_eval { attr_reader attribute.node_name.to_sym }
    end
  end

end