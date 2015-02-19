Given(/^I launch "(.*)"$/) do |chosen_browser|
  @browser = HelperMethods.browser_launch(chosen_browser)
  @browser_name = @browser.name
end

Then(/^a "(.*)" instance will open$/) do |chosen_browser|
  @browser_sym = HelperMethods.transformation(chosen_browser).to_sym
  @browser.close
  raise("The browser's actual name #{@browser_name} does not match expected name #{@browser_sym}") unless @browser_sym.to_sym.eql?(@browser_name)
end
