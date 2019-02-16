*** Settings ***
Resource  ../Resources/AmazonWebGui.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER} =  ff
${URL} =  http://www.amazon.de


*** Test Cases ***
Change Webpage Language
    [Documentation]  Change languege to EN
    [Tags]  EN
    AmazonWebGui.Change Language