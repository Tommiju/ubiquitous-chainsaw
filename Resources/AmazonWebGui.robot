*** Settings ***
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/TopNav.robot


*** Keywords ***
Search For Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search For Products
    SearchResults.Verify Search Completed

Select Products From The Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product To Cart
    Product.Add To Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed To Checkout
    SignIn.Verify Page Loaded
