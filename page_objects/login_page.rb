# frozen_string_literal: true


class LoginPage < BasePage
  XPATH_USERNAME_INPUT = '//android.widget.EditText[@resource-id="user-name"]'
  XPATH_PASSWORD_INPUT = '//android.widget.EditText[@resource-id="password"]'
  XPATH_LOGIN_BUTTON = '//android.widget.Button[@resource-id="login-button"]'



  def enter_username(username)
    @@driver.find_element(:xpath, XPATH_USERNAME_INPUT).send_keys username
    LoginPage.new(@@driver)
  end

  def enter_password(password)
    @@driver.find_element(:xpath, XPATH_PASSWORD_INPUT).send_keys password
    LoginPage.new(@@driver)
  end

  def click_login_button
    @@driver.find_element(:xpath, XPATH_LOGIN_BUTTON).click
    @@driver.manage.timeouts.implicit_wait = 10
    ShopPage.new(@@driver)
  end
end
