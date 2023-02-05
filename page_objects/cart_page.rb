# frozen_string_literal: true

class CartPage < BasePage
  def check_cart_item(item_name)
    xpath_to_check_item = "//android.view.View[@content-desc=\"#{item_name}\"]"
    begin
      @@driver.find_element(:xpath, xpath_to_check_item).clickable == 'true'
    rescue StandardError
      false
    end
  end
end
