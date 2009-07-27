Feature: Story
 In order to make my backlog
 As a Product Manager
 I want create and manage stories

  Scenario: Story list
    Given I have story titled agile, scrum, xp
    When I go to the list of stories
    Then I should see "agile"
    And I should see "scrum"
    And I should see "xp"

  Scenario: Create Story
    Given I have no story
    And I am on the list of stories
    When I follow "New Story"
    And I fill in "Title" with "agile"
    And I fill in "Description" with "Description of story"
    Then I press "Create"
    Then I should see "Story was successfully created"
    And I should see "agile"
    And I should see "Description of story"
    And I should have 1 story

    Scenario: Create Story with blank title
    Given I have no story
    And I am on the list of stories
    When I follow "New Story"
    And I fill in "Title" with ""
    And I fill in "Description" with "Description of story"
    Then I press "Create"
    Then I should see "Title can't be blank"
    And I should have 0 story

   Scenario: Destroy Story
    Given I have story titled agile
    And I am on the list of stories
    When I follow "Destroy"
    And I should not see "agile"

   Scenario: Update Story
    Given I have story titled agile
    And I am on the list of stories
    When I follow "Edit"
    And I fill in "Title" with "xp"
    And I fill in "Description" with "Description of story"
    Then I press "Update"
    Then I should see "Story was successfully updated"
    And I should not see "agile"
    And I should see "xp"
    And I should see "Description of story"

   Scenario: Show Story
    Given I have story titled agile
    And I am on the list of stories
    When I follow "Show"
    And I should see "agile"

