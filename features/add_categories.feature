Feature: Add and edit categories
  As an admin
  In order to make it easier to browse through blog articles
  I want to add and edit categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Navigate to categories page
    Given I am on the admin dashboard page
    And I follow "Categories"
    Then I should see "Name"
    Then I should see "Keywords"
    Then I should see "Permalink"
    Then I should see "Description"
