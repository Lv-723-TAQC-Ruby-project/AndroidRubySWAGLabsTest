# frozen_string_literal: true

class ShopPage < BasePage
  def add_item(item_name)
    xpath_to_find = "//android.view.View[@content-desc=\"#{item_name}\"]"
    @@driver.manage.timeouts.implicit_wait = 2
    is_found = false
    until is_found
      begin
        if @@driver.find_element(:xpath, xpath_to_find).clickable == 'true'
          @@driver.manage.timeouts.implicit_wait = 5
          @@driver.find_element(:xpath, xpath_to_find).click
          return ItemPage.new(@@driver)
        end
      rescue StandardError
        page_before_scroll = @@driver.page_source
        scroll_down(@@driver)
        if @@driver.page_source == page_before_scroll
          puts 'end of the page is reached'
          break
        end
      end

    end
  end
end
