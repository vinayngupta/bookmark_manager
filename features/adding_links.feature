Feature: Adding Links
	In order to remember a Web page
	As a visitor
	I want to save its name and URL

	Scenario: Bookmark Google homepage
		Given I am on the homepage
		And I enter "google.com" and "Google"
		When I press Add link
		Then I should see "Google"