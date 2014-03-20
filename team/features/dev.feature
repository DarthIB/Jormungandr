Feature: Display the page correctly
The page should display all of the data
	
Scenario: Display data in tables
	Given I am in "app\views\panic"
	And I visit the "development" page	
	Then I can see the data displayed
	
Scenario: Show a map of the areas from the data
	Given I am in "apps\views\panic"
	And I visit the "development" page
	Then I can scroll through a "map_canvas"
	
Scenario: Search for a country
	Given I am in "apps\views\panic"
	And I visit the "development" page
	And the input is "Angola"
	When I press search
	Then the output is all entries for that country