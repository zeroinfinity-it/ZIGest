# app/inputs/currencyeuro_euro_input.rb
class CurrencyeuroInput < SimpleForm::Inputs::Base
  def input
    "€ #{@builder.text_field(attribute_name, input_html_options)}".html_safe
  end
end