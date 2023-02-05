# frozen_string_literal: true

class BasePage
  def initialize(driver)
    @@driver = driver
  end

  def scroll_down(driver)
    @@driver = driver
    window = @@driver.window_rect
    action_builder = @@driver.action
    input = action_builder.pointer_inputs[0]
    action_builder
      .move_to_location(window.width / 2, window.height * 0.85)
      .pointer_down(:left)
      .pause(device: input, duration: 0)
      .move_to_location(window.width / 2, window.height * 0.84)
      .pause(device: input, duration: 0)
      .release
      .perform
  end

  def scroll_up(driver)
    @@driver = driver
    window = @@driver.window_rect
    action_builder = @@driver.action
    input = action_builder.pointer_inputs[0]
    action_builder
      .move_to_location(window.width / 2, window.height * 0.83)
      .pointer_down(:left)
      .pause(device: input, duration: 0)
      .move_to_location(window.width / 2, window.height * 0.85)
      .pause(device: input, duration: 0)
      .release
      .perform
  end

  def quit
    @@driver.quit
  end
end
