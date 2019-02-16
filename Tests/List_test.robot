*** Settings ***
Documentation  Amazon.de testing searchign products and adding them to the cart
Resource  ../Resources/AmazonWebGui.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test