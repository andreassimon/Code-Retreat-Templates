require "selenium-webdriver"

Before do
  @driver = Selenium::WebDriver.for :firefox
  @parkcalc_page = ParkCalcPage.new(@driver)
end

After do |scenario|
  @driver.quit
end
