Feature: Verifing Adactin Hotel login detail

  Scenario Outline: Verifying Adactin Hotel Login vaild
    Given User is on the adactin page
    When User Should perform login "<userName>","<password>"
    Then User should verify after login success message "Hello venkatesh12345!"

    Examples: 
      | userName       | password   |
      | venkatesh12345 | venkat@123 |

  Scenario Outline: Verifying Adactin Hotel Login using Enter
    Given User is on the adactin page
    When User Should perform login "<username>","<password>"
    Then User should verify after login success message "Hello venkatesh12345!"

    Examples: 
      | userName       | password   |
      | venkatesh12345 | venkat@123 |

  Scenario Outline: Verifying Adactin Hotel Login Invaild credentials
    Given User is on the adactin page
    When User Should perform login "<username>","<password>"
    Then User should verify after login with invaild error message contains "Invaild Login details or your password might have expired."

    Examples: 
      | userName        | password      |
      | venkatesh2345df | venkat@47hasc |
