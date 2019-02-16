*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}

End Web Test
    Close Browser

Change Language
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Select Language

