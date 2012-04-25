Given /^I have a timeslip$/ do
  steps %Q{
    Given I am on the timeslips page
    When I follow "Add Timeslip"
    And I select "Test Project" from "Project"
    And I select "Test Task" from "Task"
    And I select "John Doe" from "User"
    And I fill in the following:
      | Date            | 16/04/2012              |
      | Comment         | This is a test comment  |
      | Hours           | 1.0                     |
    And I press "Create Timeslip"
    Then I should see "The timeslip was successfully created."
    And I should see "This is a test comment"
  }
end