*** Settings ***
Resource	resource.resource
Suite Setup	Test Suite Setup
Suite Teardown	CloseAllBrowsers

*** Test cases ***
Make sure we're on the right page
	Verify Correct Site

Perform Login
	Enter Username	standard_user
	Enter Password	secret_sauce
	Click Button	LOGIN

Add Product to Cart
	Choose Product	Sauce Labs Bolt T-Shirt
	Add to Cart
