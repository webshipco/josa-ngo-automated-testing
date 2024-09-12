Feature: Check the contact page
  As an anonymous user
  I want to be able to visit the contact page
  So that I know that the josa.ngo site is working

  Scenario: Check contact
    Given I am on "/contact-us"
     Then I should see "Contact us"
      And I should see "Address"
      And I should see "Jordan Open Source Association (JOSA)"
      And I should see "Center for Innovation and Entrepreneurial Excellence King Hussein Business Park"
      And I should see "Amman, Jordan"
      And I should see "Working Hours:"
      And I should see "Sunday — Thursday"
      And I should see "From 09:00 to 17:00 GMT+3"
      And I should see "Voice:"
      And I should see "+962 77 102 9999"

  Scenario: Check Feedback and Inquiries test
    Given I am on "/contact-us"
     Then I should see "Feedback and Inquiries"
      And I should see "Whoever you are, whether you are happy or unhappy about any aspect of our activity or work, we value you feedback."
      And I should see "If you have a comment or complaint, please fill in our online feedback form below."
      And I should see "What is your feedback or inquiry about?"
     When I wait 5 seconds
      And I fill in "#subject" with "Title Subject" by attribute
     Then I should see "Please describe it in details."
     When I wait 5 seconds
      And I fill in "#inquiry" with "Your Question" by attribute
     Then I should see "Your Name"
     When I wait 5 seconds
      And I fill in "#name" with "Enter Your Name" by attribute
     Then I should see "Your Email"
     When I wait 5 seconds
      And I fill in "#email" with "Enter Your Email" by attribute