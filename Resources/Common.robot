*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}

End Web Test
    Close Browser
