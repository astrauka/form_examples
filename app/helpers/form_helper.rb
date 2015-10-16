module FormHelper
  def text_input(f, name)
    input(f, name, type: :text_field)
  end

  def input(f, name, type: :text_field)
    field_set_tag(nil, class: 'form__fieldset') do
      content_tag(:div, class: 'field') do
        [
          f.label(name, class: 'field__label'),
          f.send(type, name, class: 'field__control'),
        ].join.html_safe
      end
    end
  end
end
