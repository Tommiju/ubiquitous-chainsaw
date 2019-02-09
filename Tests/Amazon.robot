*** Settings ***
Documentation  Amazon.de testing searchign products and adding them to the cart
Resource  ../Resources/AmazonWebGui.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${BROWSER} =  edge
${URL} =  http://www.amazon.de
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User Can Search For Products
    [Documentation]  test searching products
    [Tags]  Current
    AmazonWebGui.Search For Products

User Can View Products
    [Documentation]  test view products
    [Tags]  Smoke
    AmazonWebGui.Search For Products
    AmazonWebGui.Select Products From The Search Results

User Can Add Product To Cart
    [Documentation]  test adding product to cart
    [Tags]  Smoke
    AmazonWebGui.Search For Products
    AmazonWebGui.Select Products From The Search Results
    AmazonWebGui.Add Product To Cart


User Must Sign In To Check Out
    [Documentation]  test checkout
    [Tags]  Smoke
    AmazonWebGui.Search For Products
    AmazonWebGui.Select Products From The Search Results
    AmazonWebGui.Add Product To Cart
    AmazonWebGui.Begin Checkout
