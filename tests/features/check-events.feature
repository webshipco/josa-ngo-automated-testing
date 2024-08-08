Feature: Check the events page
  As an anonymous user
  I want to be able to visit the events page
  So that I know that the josa.ngo site is working

  Scenario: Check events
    Given I am on "/events"
     Then I should see "Events"
      And I should see "JOSA’s event calendar. We host regular tech talks, workshops, and meetups."
      And I should see "Upcoming Events"
      And I should see "All Events"
      And I should see "Workshops"
      And I should see "Sessions"
      And I should see "Public Panels"
      And I should see "Meetups"
      And I should see "JOSA TechTalks"
      And I should see "Hackathons"
      And I should see "Cryptoparties"