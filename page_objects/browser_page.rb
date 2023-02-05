# frozen_string_literal: true


class BrowserPage < BasePage
  ID_TERMS_ACCEPT = 'com.android.chrome:id/terms_accept'
  ID_NEGATIVE_BUTTON = 'com.android.chrome:id/negative_button'



  def click_terms_accept_button
    @@driver.find_element(:id, ID_TERMS_ACCEPT).click
    BrowserPage.new(@@driver)
  end

  def click_no_thanks_button
    @@driver.find_element(:id, ID_NEGATIVE_BUTTON).click
    BrowserPage.new(@@driver)
  end

  def navigate_to_site(web_address)
    @@driver.get(web_address)
    @@driver.manage.timeouts.implicit_wait = 10
    LoginPage.new(@@driver)
  end
end
