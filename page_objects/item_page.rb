# frozen_string_literal: true

class ItemPage < BasePage
  XPATH_ADD_TO_CART_BUTTON = '//android.widget.Button[@text="ADD TO CART"]'
  XPATH_CLICK_CART_BUTTON = '//android.view.View[@resource-id="shopping_cart_container"]'



  def add_to_cart
    scroll_down(@@driver)
    @@driver.find_element(:xpath, XPATH_ADD_TO_CART_BUTTON).click
    ItemPage.new(@@driver)
  end

  def click_cart_button
    scroll_up(@@driver)
    @@driver.find_element(:xpath, XPATH_CLICK_CART_BUTTON).click
    CartPage.new(@@driver)
  end
end
