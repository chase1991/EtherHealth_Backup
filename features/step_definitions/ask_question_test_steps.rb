Given /^I am currently on ask question page$/ do
  visit questions_path
end

When /^I press "Login" on question page$/ do
  click_link "Login"
end

Then /^I should go to login page$/ do
  visit login_path
end