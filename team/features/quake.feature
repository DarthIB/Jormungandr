Feature: Display the page correctly
  In order to see the fully functional website
  As a person who wants to get good marks
  I want to see the twitter feed and the map and some text
 
	Scenario: Display the twitter feed
		Given I am in "app\views\panic"
		And I visit the "earth" page
		Then I see the twitter feed
	
	Scenario: see the 3d map
		Given I am in "app\views\panic"
		And I visit the "earth" page
		Then I see the "mapd" 
	
	Scenario: Read the text
		Given I am in "app\views\panic"
		And I visit the "earth" page
		Then I see the text under the map