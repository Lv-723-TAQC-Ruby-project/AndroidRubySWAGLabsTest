# frozen_string_literal: true

require 'appium_lib_core'
require 'json'
require_relative '../page_objects/base_page'
require_relative '../page_objects/browser_page'
require_relative '../page_objects/cart_page'
require_relative '../page_objects/item_page'
require_relative '../page_objects/login_page'
require_relative '../page_objects/shop_page'

def credentials
  JSON.parse(File.read('credentials/credentials.json'))
end

def android_caps
  {
    caps: {
      platformName: 'android',
      deviceName: 'emulator-5554',
      appPackage: 'com.android.chrome',
      appActivity: 'com.google.android.apps.chrome.Main',
      noRest: true,
      fullRest: false,
      autoWebview: false,
      ensureWebviewsHavePages: true,
      nativeWebScreenshot: true,
      newCommandTimeout: 3600,
      connectHardwareKeyboard: true
    },
    appium_lib: {
      server_url: 'http://127.0.0.1:4723/wd/hub'
    }
  }
end
