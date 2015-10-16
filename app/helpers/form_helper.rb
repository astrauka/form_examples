module FormHelper
  def input(attributes)
    render("shared/forms/#{attributes[:version]}/#{attributes[:type]}", attributes: attributes)
  end
end
