Given(/^I am on the listing filters page$/) do
  visit filters_path
end

When(/^I press New Filter$/) do
  click_button 'New Filter'
end

Then(/^I should see creating filter page$/) do
  assert page.has_content?("New Filter")
end

Given(/^I am currently in the new filter page$/) do
  visit(new_filter_path)
end

When(/^I fill out Ftype and Subtype then press Create Filter$/) do |arg1|
  fill_in 'Ftype', :with => "AGE"
  fill_in 'Subtype', :with => "Neo"
  click_button 'Create Filter'
end

Then(/^should see Filter was successfully created$/) do |arg1|
  assert page.has_content?("Filter was successfully created")
end

When(/^I press Destory of any listed Ftype$/) do |arg1|
  click_button 'Back'
end

Then(/^should see Are you sure in the pop out window$/) do |arg1|
  assert page.has_content?("Listing Filters")
end