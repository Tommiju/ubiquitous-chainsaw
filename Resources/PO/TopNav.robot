*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Search For Products
    Input Text                  id=twotabsearchtextbox  ${SEARCH_TERM}
    Click Button                xpath=//div[1]/header/div/div[1]/div[3]/div/form/div[2]/div/input
   #Wait Until Page Contains    "Ferrari 458"

Select Language
    Select Radio Button     xpath=//*[@id="icp-nav-flyout"]  EN