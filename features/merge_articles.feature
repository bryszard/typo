Feature: Merge articles
  As an admin
  In order to limit the articles with the similar or same content
  I want to merge articles

  Background:
    Given the blog is set up
    And there are two existing articles

  Scenario: I cannot see Merge Articles button on edit page as regular user
    Given I am logged in as a regular user
    And I go to the new article page
    Then I should see "New article"
    And I should not see "Merge Articles"
    And I should not see "Article ID"

  Scenario: I can Merge Articles on edit page as admin
    Given I am logged into the admin panel
    And I am on the edit page of article 3
    Then I should see "New article"
    And I should see "Merge Articles"
    And I should see "Article ID"
    Then I fill in "Article ID" with "4"
    And I press "Merge"
    Then I should be on the edit page of article 5
    And I should see "This is body of article 1."
    And I should see "This is body of article 2."
