class ProductDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  def created_at
    helpers.content_tag :span, class: 'time' do
      object.created_at.strftime("%a %m/%d/%y")
    end
  end

  def any_errors
    html = ""
    if product.errors.any?
      html += helpers.content_tag :h4 do
        "Following errors prohibited this product from being saved:"
      end
      html += "<ul>"
        product.errors.full_messages.each do |msg|
          html += helpers.content_tag :li do msg end
        end
      html += "</ul>"
    end
    html.html_safe
  end

  def is_available
    product.product_status == 0 ? "Disabled" : "Enabled"
  end

  def colour
    product.color!= nil && product.color != "" ? product.color.capitalize : "--"
  end
end
