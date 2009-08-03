Feature: Task
 In order to make my sprint
 As a agile team
 I want create and manage tasks to my stories

  Scenario: Create Task
    Given I have story titled agile
    And I have no task
    And I am on the list of stories
    When I follow "show"
    And I fill in "Description" with "Description of task"
    Then I press "Create"
    And I should see "Description of task"
    And I should have 1 task

