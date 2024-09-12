Feature: Check the home page
  As a nonymouse user
  I want to be able to visit the home page
  So that I know that the site is working

  Scenario: Check homepage
    Given I am on the homepage
     Then I should see "JOSA is the not for profit organisation that works for a better Jordan through openness in technology."
     
      
  Scenario: Check Where JOSA's impact lies info
    Given I am on the homepage
     Then I should see "Where JOSA's impact lies"
      And I should see "Open Source Software"
      And I should see "Modern IT infrastructure relies on open source software, that’s a fact. JOSA advocates for its adoption across the local technology sector, and encourages software developers to contribute to open source projects to improve their skills."
      And I should see "Open Source Hardware"
      And I should see "JOSA believes that open source hardware can accelerate innovation, give access to manufacturing in low-resource settings, and enable creativity and collaboration."
      And I should see "Open Internet"
      And I should see "We believe that the Internet should remain open and accessible for everyone, with no technical, legal, or physical barriers to devices, network, and content."
      And I should see "Privacy"
      And I should see "JOSA believes that information that is personal should be afforded legal and technological protections. Technology should be used for good, and not exploit our data for power and profit. JOSA pushes for legislation that protects users’ data, promotes strong encryption, and limits mass surveillance."
      And I should see "Digital Security"
      And I should see "The Internet should be a safe space for everyone. JOSA believes that awareness of digital safety practices should be widespread, and digital security help should be made available for everyone without discrimination."
      And I should see "Open Knowledge"
      And I should see "JOSA holds that knowledge should be freely and universally accessible. We also recognise the need to increase the availability of knowledge online in the Arabic language."
      And I should see "Open Government"
      And I should see "JOSA pushes for more transparency in government through the release of open government data, improving access to government information, and releasing data and content under an open government license. We believe an open government improves accountability and is a driver to economic growth."
     When I click "Open Source Software"
     Then I should see "Open Source Software"
      And I should see "Modern IT infrastructure relies on open source software, that’s a fact. JOSA advocates for its adoption across the local technology sector, and encourages software developers to contribute to open source projects to improve their skills."
     When I move backward one page
      And I click "Open Source Hardware"
     Then I should see "Open Source Hardware"
      And I should see "JOSA believes that open source hardware can accelerate innovation, give access to manufacturing in low-resource settings, and enable creativity and collaboration."
     When I move backward one page
      And I click "Open Internet"
     Then I should see "Open Internet"
      And I should see "We believe that the Internet should remain open and accessible for everyone, with no technical, legal, or physical barriers to devices, network, and content."
     When I move backward one page
      And I click "Privacy"
     Then I should see "Privacy"
      And I should see "JOSA believes that information that is personal should be afforded legal and technological protections. Technology should be used for good, and not exploit our data for power and profit. JOSA pushes for legislation that protects users’ data, promotes strong encryption, and limits mass surveillance."
     When I move backward one page
      And I click "Digital Security"
     Then I should see "Digital Security"
      And I should see "The Internet should be a safe space for everyone. JOSA believes that awareness of digital safety practices should be widespread, and digital security help should be made available for everyone without discrimination."
     When I move backward one page
      And I click "Open Knowledge"
     Then I should see "Open Knowledge"
      And I should see "JOSA holds that knowledge should be freely and universally accessible. We also recognise the need to increase the availability of knowledge online in the Arabic language."
     When I move backward one page
      And I click "Open Government"
     Then I should see "Open Government"
      And I should see "JOSA pushes for more transparency in government through the release of open government data, improving access to government information, and releasing data and content under an open government license. We believe an open government improves accountability and is a driver to economic growth."
    
  Scenario: Check Research and Publications info
    Given I am on the homepage
     Then I should see "Research and Publications"
      And I should see "Research Papers"
      And I should see "Technology Facilitated Gender Based Violence Legislative Mapping"
      And I should see "Guides"
      And I should see "Digital Security Toolkit for Human Rights Defenders"
     When I wait 5 seconds
      And I click "Technology Facilitated Gender Based Violence Legislative Mapping"
     Then I should see "Technology Facilitated Gender Based Violence Legislative Mapping"
      And I should see "By Fatima Mohammad Alkhadire"
     When I wait 5 seconds
      And I move backward one page
      And I wait 5 seconds
      And I click "Digital Security Toolkit for Human Rights Defenders"
     Then I should see "Digital Security Toolkit for Human Rights Defenders"
      And I should see "By AmanRaqami - Jordan Open Source Association (JOSA)"

  Scenario: Check Join Us
    Given I am on the homepage
     Then I should see "Join Us"
      And I should see "Our community is built by JOSAns, formidable members who own diverse skills, interests and experiences, all working for an open-technology, digitally-enabled Jordan."
      And I should see "Become a Member"
     When I click "Digital Security Toolkit for Human Rights Defenders"
      And I wait 5 seconds
     Then I should see "The Digital Security Toolkit for Human Rights Defenders offers user-friendly steps to safeguard online accounts and communications, specifically designed for human rights defenders in the MENA region. The toolkit provides step-by-step checklists to:"
      And I should see "Secure Your Accounts"
      And I should see "Protect Online Privacy"
      And I should see "Communicate Safely"
      And I should see "Report Account Issues"
      And I should see "Protect Yourself in Crises"
      And I should see "Seek Additional Help"