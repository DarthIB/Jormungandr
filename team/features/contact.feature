Feature: Allow users to contact us
Allow users put in their information
Let the page display all features
Let information be submittted

	Scenario: Load the page
	Given I am in "app\views\panic"
	And the file "contact.html.erb" exists
	And I am on the "Contact" page	
	Then I can see the data displayed

	Scenario: Let text be placed into assigned boxes
	And I am on the "Contact" page	
	Then I can edit the boxes

	Scenario: Submit the information
	And I am on the "Contact" page
	And I press "send message"
	Then I can submit my information

	Scenario: Cancelling a submission
	And I am on the "Contact" page
	And I press "cancel"
	Then I will be diverted to the "Home" page
