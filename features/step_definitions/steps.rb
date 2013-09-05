Given /^I click "([^\"]*)"$/ do |link|
  click_link link
end

And /^I fill "([^\"]*)" in the "([^\"]*)" field$/ do |text,field|
  fill_in field, with: text 
end

Then /^I see "([^\"]*)"$/ do |text|
  expect(page).to have_content text
end

Then /^I don't see "([^\"]*)"$/ do |text|
  expect(page).to_not have_content text
end

And /^I choose "([^\"]*)" in the "([^\"]*)" field$/ do |option,select|
  select option, from: select
end

Given /^I login to the app$/ do
  login "JuanPerez", "pass1234"
end

Given /^I login to the app as admin$/ do
  login "admin", "admin1234"
end

Then /^I see a file$/ do
  page.response_headers["Content-Disposition"].should == "attachment"
end

Given /^I have a registered user$/ do
  FactoryGirl.create(:user)
end

Given /^I have a admin user$/ do
  FactoryGirl.create(:admin)
end

Given /^I have a skill loaded$/ do
  FactoryGirl.create(:skill)
end

Given /^I have information about a user$/ do
  FactoryGirl.create(:user_skill)
end

And /^I am in the root page$/ do
  visit "/"
end



def login(username, password)
  visit "/"
  fill_in "username", with: username
  fill_in "password", with: password
  click "login"
end