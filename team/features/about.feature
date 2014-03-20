Feature: Showcase the team
	In order to praise the developers
	As a very impressed user
	I want to know about the team and its members
	
	Scenario: Display the Team description
		Given I I am in "app\views\panic"
		And I visit the "about" page
		Then I see "Team Jormungandr"
		
	Scenario: Display the crew
		Given I I am in "app\views\panic"
		And I visit the "about" page
		Then I see "Fredric"
		
	Scenario: Display pictures
		Given I I am in "app\views\panic"
		And I visit the "about" page
		Then I see pictures of the team members