Given /^I am on the welcome page$/ do 
   visit root_url
end

Given /^I am not logged in$/ do 
   logged_in = false
end

When /^I press "([^\"]*)"$/ do |link|
   click_link link
end

When /^I press the button "Login"$/ do 
	click_link 'Login'
end

Then /^page should not change$/ do 
   visit root_url
end

Then /should go to login page from welcome page$/ do 
   visit login_path
end

Then /should go to sign up page$/ do
   visit signup_path
end
