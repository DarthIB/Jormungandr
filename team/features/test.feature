Feature: View weather
  In order view the weather
  As an regular user
  I need to be able to open and view the weather page
  
 
Scenario: initial tests
	Given I am in "app\views\weather"
	And the file "weather.html" exists
	And I am on the "/weather" page
	Then I should see "Welcome to the weather section"
Scenario: Map page tests
	And I am on the "/weather" page
	When I click "Map"
	Then I will see "This is a map"
	And there is a "basicMap"
Scenario: forecast page tests
	And I am on the "/weather" page
	When I click "3-Hourly"
	Then I may see ""
	And I am on the "/weather" page
	And is in box "London"
	When I clack "pushme"
	Then I may see ""
Scenario: Twitter
	And I am on the "/weather" page
	When I click "Twitter"
	Then I shall see "Twitter"
	