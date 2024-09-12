Feature: Check the our team page
  As an anonymous user
  I want to be able to visit the our team page
  So that I know that the josa.ngo site is working

  Scenario: Check our team
    Given I am on the homepage
     When I wait 5 seconds
      And I click "العربية" 
     Then I should see "جوسا هي المنظمة غير الربحية التي تعمل من أجل أردن أفضل من خلال الانفتاح التكنولوجي."
     When I wait 5 seconds
      And I click "ENGLISH" 
      And I wait 5 seconds
     Then I should see "JOSA is the not for profit organisation that works for a better Jordan through openness in technology."
     When I click "ABOUT"
      And I wait 5 seconds
     Then I should see "About JOSA" 
     When I click "BLOG"
      And I wait 5 seconds
     Then I should see "Blog"
      And I should see "Reflections and opinions on open source technologies, and all things at the intersection of human rights and technology. Brought to you by JOSA team and volunteer members."
     When I click "EVENTS"
      And I wait 5 seconds
     Then I should see "Events"
      And I wait 5 seconds
      And I should see "JOSA’s event calendar. We host regular tech talks, workshops, and meetups."
     When I click "CONTACT"
      And I wait 5 seconds
     Then I should see "Contact us"
    