*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Added to Basket

Proceed To Checkout
    Click Button                  xpath=//*[@id="hlb-ptc-btn"]
