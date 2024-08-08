Feature: Check the our team page
  As an anonymous user
  I want to be able to visit the our team page
  So that I know that the josa.ngo site is working

  Scenario: Check our team
    Given I am on "/our-team"
     Then I should see "Our Team"
      And I should see "Meet the faces behind JOSA. A team composed of young and talented folks working day-and-night to spread the good word of open source."
      And I should see "Board of Directors"
      And I should see "Anas Alhamdan"
      And I should see "Staff"
      And I should see "Issa Mahasneh"
