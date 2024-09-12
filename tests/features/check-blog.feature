Feature: Check the blog page
  As an anonymous user
  I want to be able to visit the blog page
  So that I know that the josa.ngo site is working

  Scenario: Check blog
    Given I am on "/blog"
     Then I should see "Blog"
      And I should see "Reflections and opinions on open source technologies, and all things at the intersection of human rights and technology. Brought to you by JOSA team and volunteer members."
      And I should see "All Articles"
      And I should see "Statements"
      And I should see "Op-Eds from JOSA's Community"
      And I should see "Community Bulletins"

  