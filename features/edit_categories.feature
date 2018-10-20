Feature: Edit Blog Categories
  As a blog administrator
  In order to categorize my posts
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully access to categories
    Given I am on the admin dashboard
    When I follow "Categories"
    Then I should be on the categories page
    And I should see "Categories"
    
  Scenario: Successfully add categories
    Given I am on the categories page
    When I fill in "category_name" with "Lorem"
    And I fill in "category_keywords" with "Ipsum"
    And I fill in "category_permalink" with "Dolor"
    And I fill in "category_description" with "Sit Amet"
    And I press "Save"
    Then I should be on the categories page
    And I should see "Lorem"
    And I should see "Ipsum"
    And I should see "Dolor"
    And I should see "Sit Amet"
    