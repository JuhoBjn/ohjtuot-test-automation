# Ohjtuot Test Automation

Learning to use Robot Framweork and QWeb by creating a test for [saucedemo](https://www.saucedemo.com/).

The robot will log in to the store as a standard user, choose an item, check the shopping cart and go through the checkout.
It will also make sure the total price is correct.

## Installing and running the robot

To run the robot you need python 3.7 or newer.
You'll also need a browser for this to work.

Clone the repo with `git clone https://github.com/JuhoBjn/ohjtuot-test-automation.git` and navigate your way into the into the repository.


### *optional* Create a virtual environment
Install virtualenv with the command `pip install virtualenv`

Then create a virtual environment with `virtualenv swag-env`

If you're using Linux the environment is activated with `source swag-env/bin/activate`

In powershell it's activated with `.\swag-env\Scripts\activate.ps1`


### Setting up the project and running the robot
1. Install dependencies by running `pip install -r requirements.txt`
2. Install webdriver by running `webdrivermanager firefox` (You can replace Firefox with the browser of your choice)
3. Run the robot with `robot swagtest.robot`
