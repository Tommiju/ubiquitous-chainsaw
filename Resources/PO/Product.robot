*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Zurück zu den Suchergebnissen für "${SEARCH_TERM}"

Add To Cart
    Click Button                xpath=//*[@id="add-to-cart-button"]
