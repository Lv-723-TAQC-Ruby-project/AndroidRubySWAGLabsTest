# frozen_string_literal: true

describe 'Testing www.saucedemo.com login and add to the cart' do
  let(:web_site) { 'https://www.saucedemo.com/' }
  let(:item_to_check) { 'Sauce Labs Bike Light' }
  let(:username) { credentials['username'] }
  let(:password) { credentials['password'] }

  driver = nil

  before(:each) do
    driver = BrowserPage.new(Appium::Core.for(android_caps).start_driver)
  end

  after(:each) do
    driver.quit
  end

  it 'to login to www.saucedemo.com and add an item to the cart' do
    is_item_in_cart = driver.click_terms_accept_button
                            .click_no_thanks_button
                            .navigate_to_site(web_site)
                            .enter_username(username)
                            .enter_password(password)
                            .click_login_button
                            .add_item(item_to_check)
                            .add_to_cart
                            .click_cart_button
                            .check_cart_item(item_to_check)

    expect(is_item_in_cart).to eql true
  end
end
