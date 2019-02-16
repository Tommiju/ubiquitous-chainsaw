*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Showing selected results. See all results for "${SEARCH_TERM}"
    #Zurück zu den Suchergebnissen für
Add To Cart
    Click Button                xpath=//*[@id="add-to-cart-button"]
