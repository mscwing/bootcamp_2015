Given(/^I launch "(.*)"$/) do |chosen_browser|
  @browser = HelperMethods.browser_launch(chosen_browser)
end

Then(/^a "(.*)" instance will open$/) do |chosen_browser|
  browser_actual = @browser.name
  browser_expected = HelperMethods.transformation(chosen_browser).to_sym
  @browser.close
  raise("The browser's actual name #{browser_actual} does not match expected name #{browser_expected}") unless browser_actual.eql?(browser_expected)
end

Given(/^I am on the USA.gov homepage$/) do
  BROWSER.goto('USA.gov')
end