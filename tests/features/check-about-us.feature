Feature: Check the about us page
  As an anonymous user
  I want to be able to visit the about us page
  So that I know that the josa.ngo site is working

  Scenario: Check about us
    Given I am on "/about-us"
     Then I should see "About JOSA"
      And I should see "Know more about JOSA."
      And I should see "JOSA is the not-for-profit organisation that works for a better Jordan through openness in technology."
      And I should see "Who we are"
      And I should see "The Jordan Open Source Association (JOSA) is a non-profit organisation based in Amman, Jordan. The association is among the few non-profits registered under the Jordan Ministry of Digital Economy and Entrepreneurship."
      And I should see "JOSA’s mission is to promote openness in technology and to defend the rights of technology users in Jordan. We believe that information that is non-personal – whether it’s software code, hardware design blueprints, data, network protocols and architecture, content – should be free for everyone to view, use, share, and modify. Our belief also holds that information that is personal should be protected within legal and technological frameworks. Access to the modern Web should likewise remain open."
      And I should see "An Awesome Community"
      And I should see "Our association has been active since 2011, working across the country and across sectors to achieve its mission. Our advocacy and training efforts reach students and teachers, government bodies, ICT professionals, and citizens more broadly. We have managed to make a considerable impact on ICT policies in Jordan, promoting fairer and privacy-preserving policies."
      And I should see "We advance our mission through a variety of activities and initiatives which focus on open source technologies, open knowledge, open government, and the rights of Jordanians in the digital world. To that end, JOSA cooperates with a multitude of local and international organisations. JOSA also leads research and development projects related to its mission in Jordan and the region."
      And I should see "We’re aware that expressions like “open source” and “digital rights” are not common in Jordan and the region, and it’s our duty to change that."
      And I should see "We’re lucky to be surrounded by a large community of some of the smartest Jordanians, supporting us either in our offline activities or our online work. To join our community, sign up through our Members’ hub."

  Scenario: Check Know more about us info
    Given I am on "/about-us"
     Then I should see "Know more about us"
      And I should see "Our Team"
      And I should see "Meet the faces behind JOSA. A team composed of young and talented folks working day-and-night to spread the good word of open source."
      And I should see "Partners and Supporters"
      And I should see "JOSA has been partnering with local and international organisations since its founding, including governments. We rely on the generosity of like-minded entities to keep our projects and initiatives running."
      And I should see "Code of Conduct"
      And I should see "Before becoming a staff, board, or volunteer member with JOSA, it is important to read and understand our code of conduct."
     When I click "Our Team"
     Then I should see "Our Team"
      And I should see "Meet the faces behind JOSA. A team composed of young and talented folks working day-and-night to spread the good word of open source."
     When I move backward one page
     When I click "Partners and Supporters"
     Then I should see "Partners and Supporters"
      And I should see "JOSA has been partnering with local and international organisations since its founding, including governments. We rely on the generosity of like-minded entities to keep our projects and initiatives running."
     When I move backward one page
     When I click "Code of Conduct"
     Then I should see "Code of Conduct"
      And I should see "Before becoming a staff, board, or volunteer member with JOSA, it is important to read and understand our code of conduct."
    
   