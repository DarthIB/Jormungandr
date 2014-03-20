Given /^I am in "([^\"]*)"$/ do |directory|
#File.chdir(directory)
@basedir = directory
end
 
And /^the file "([^\"]*)" exists$/ do |filename|
File.exists?(File.join(@basedir, filename)).should be_true
end

And /^I am on the "([^\"]*)" page$/ do |urlname|
	visit urlname
end

And /^is in box "([^\"]*)"$/ do |testo|
	fill_in('findme', :with => 'Test')
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_css("#home", :text => text)
end

When /^I click "([^"]*)"$/ do |button|
  find_link(button).visible?
end

When /^I clack "([^"]*)"$/ do |button|
  click_button(button)
end

Then /^I will see "([^"]*)"$/ do |text|
  page.should have_css("#country", :text => text)
end

Then /^I may see "([^"]*)"$/ do |text|
	page.should have_css("#3hour", :text => text)
end

Then /^I shall see "([^"]*)"$/ do |text|
	page.should have_css("#metoffice", :text => text)
end

And /^there is a "([^"]*)"$/ do |test|
	page.should have_xpath("//div[contains(@id, \"#{test}\")]")
end
