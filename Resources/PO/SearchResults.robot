*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  ${SEARCH_TERM}
 #To Do vaihda tähän oikea teksti "hakutulokset"

Click Product Link
    Click Link                  css=#result_0 a.s-access-detail-page