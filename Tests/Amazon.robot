*** Settings ***
Documentation  Amazon.de testing searchign products and adding them to the cart
Resource  ../Resources/AmazonWebGui.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test


*** Variables ***
${BROWSER} =  ff
${URL} =  http://www.amazon.de
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User Can Search For Products
    [Documentation]  Test searching products
    [Tags]  Current
    AmazonWebGui.Change Language
    AmazonWebGui.Search For Products

User Can View Products
    [Documentation]  Test view products
    [Tags]  View
    #AmazonWebGui.Change Language
    AmazonWebGui.Search For Products
    AmazonWebGui.Select Products From The Search Results

User Can Add Product To Cart
    [Documentation]  Test adding product to cart
    [Tags]  Smoke
    AmazonWebGui.Change Language
    AmazonWebGui.Search For Products
    AmazonWebGui.Select Products From The Search Results
    AmazonWebGui.Add Product To Cart


User Must Sign In To Check Out
    [Documentation]  Test checkout
    [Tags]  Smoke
    AmazonWebGui.Change Language
    AmazonWebGui.Search For Products
    AmazonWebGui.Select Products From The Search Results
    AmazonWebGui.Add Product To Cart
    AmazonWebGui.Begin Checkout
