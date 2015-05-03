Given /^am on the signup page$/ do
  visit signup_path
end

When /^I add a new user$/ do
  fill_in "user[username]", :with => "test1"
  fill_in 'user[email]', :with => "test1@t1.com"
  fill_in 'user[password]', :with => "123"
  click_button 'Create Account'
end

Then /^I should be able to see page of all users$/ do
  visit users_path
end

Given /^am on the login page$/ do
  visit login_path
end

When /^enter the exist user information$/ do
  fill_in 'session[email]', :with => "tyu@gmail.com"
  fill_in 'session[password]', :with => "123"
  #click_button "Login"
end

When /^enter the wrong user information$/ do
  fill_in 'session[email]', :with => "test1@t1.com"
  fill_in 'session[password]', :with => "1233"
  click_button 'Login'
end

Then /^I should remain in the same login page$/ do
  visit login_path
end