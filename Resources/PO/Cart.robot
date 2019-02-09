*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Zum Einkaufswagen hinzugefügt

Proceed To Checkout
    Click Link                  Zur Kasse gehen (1 Artikel)
