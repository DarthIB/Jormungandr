#encoding: utf-8
 

Given /^I am in "([^\"]*)"$/ do |directory| 
	@basedir = directory 
end
 
 And /^I visit the "([^\"]*)" page$/ do |urlname|
  visit urlname
end
 
Then /^I see the twitter feed$/ do
  page.should have_content 'Tweets by'
 end

Then /^I see the 3d map$/ do
   assert page.has_content? 'test'
end
 
Then /^I see the text under the map$/ do
  page.should have_content 'interactive 3D map'
end

Then /^I should see the map "(.+)"$/ do |map|
    page.should have_xpath("//img[@src=\"/public/images/#{image}\"]")
end
