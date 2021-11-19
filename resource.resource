*** Settings ***
Library		QWeb

*** Variables ***
${WEBSITE}	https://www.saucedemo.com/
${BROWSER}	firefox
${DRIVER}	/home/juho/GitRepos/robot-testing/swag-env/driver/geckodriver
${DELAY}	0.5s
${ADD TO CART}	//*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]

*** Keywords ***
Test Suite Setup
	OpenBrowser	${WEBSITE}	${BROWSER}	executable_path=${DRIVER}
	SetConfig	SearchMode	draw
	SetConfig	Delay		${DELAY}

Verify Correct Site
	VerifyUrl	https://www.saucedemo.com/

Enter Username
	[Arguments]	${USERNAME}
	TypeText	Username	${USERNAME}

Enter Password
	[Arguments]	${PASSWORD}
	TypeText	Password	${PASSWORD}

Click Button
	[Arguments]	${BUTTON_NAME}
	ClickText	${BUTTON_NAME}

Choose Product
	[Arguments]	${PRODUCT}
	ClickText	${PRODUCT}

Add to Cart
	ClickElement	${ADD TO CART}
