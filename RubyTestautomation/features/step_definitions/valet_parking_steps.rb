require "rspec/matchers"


Given /^I chose "([^"]*)"$/ do |parking_lot|
  @parkcalc_page.goto
  @parkcalc_page.parking_lot = parking_lot
end

Given /^I entered on "([^"]*)" at "([^ ]*) (AM|PM)"$/ do |entry_date, entry_time, entry_am_pm|
  @parkcalc_page.entry_date = entry_date
  @parkcalc_page.entry_time = entry_time
  @parkcalc_page.entry_am_pm = entry_am_pm
end

When /^I leave on "([^"]*)" at "([^ ]*) (AM|PM)"$/ do |leaving_date, leaving_time, leaving_am_pm|
  @parkcalc_page.leaving_date = leaving_date
  @parkcalc_page.leaving_time = leaving_time
  @parkcalc_page.leaving_am_pm = leaving_am_pm
end

Then /^the estimated parking cost is "([^"]*)"$/ do |estimated_parking_cost|
  @parkcalc_page.calculate
  @parkcalc_page.estimated_cost.should == estimated_parking_cost
end
