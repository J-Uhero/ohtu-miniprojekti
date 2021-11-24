*** Settings ***
Resource  resource.robot
Suite Setup  Prepare Browser
Suite Teardown  Close Browser

*** Test Cases ***
Flask Framework Should Be Operational
    Go To Home Page
    Hello World Page Should Be Open

*** Keywords ***
Hello World Page Should Be Open
    Title Should Be  WinkVink
    Page Should Contain  Hello, World!