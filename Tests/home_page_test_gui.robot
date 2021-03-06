*** Settings ***
Resource            ./settings.robot
Suite Teardown      Close Browser   ALL
Force Tags          HOME_PAGE   GUI_TEST

*** Test Cases ***
Validate Home Page
    [Documentation]  This test case login using basic authentication and validates Home Page
    Given I Open '${site_url}' in '${browser}' Browser
    Then Validate Title In Home Page
    And Validate Tags are present
    And List Of Articles Is Present
    And Validate Pagination On Home Page
