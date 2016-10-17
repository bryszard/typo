Feature: Merge articles
  As an admin
  In order to limit the articles with the similar or same content
  I want to merge articles

  Background:
    Given the blog is set up
    And there are two existing articles

  Scenario: I see Merge Articles button as admin on edit page
    Given I am logged into the admin panel
    And I am on the edit page of article 1
    Then I should see "Merge Articles"
    And I should see "Article ID"
