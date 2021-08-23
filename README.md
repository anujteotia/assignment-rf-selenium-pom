# Robot Framework (BDD) - Page Object Model Pattern - Python - Selenium - API - Gherkin
Gui Automation is acheived by using Browser library of Robot Framework. Page Object Model pattern is implemented considering Abstraction and extendability of the framework for long term. 
For API testing python requests library is used

## Prerequisites
Only Python 3.7 or newer is supported.

* Install `node.js` e.g. from https://nodejs.org/en/download/
* Update pip `pip install -U pip` to ensure latest version is used
* Install robotframework-browser and python requests from the commandline: `pip install robotframework-browser`
and `pip install requests`
* Install the node dependencies: run `rfbrowser init` in your shell

>if `rfbrowser` gives error, try `python -m Browser.entry init`

## Framework Functionalities And Other Information

* All the test cases are under `Tests/` directory
* All supporting Keywords are under `Resources` directory
* `Pages` directory contains a python file which contains configurations & all the xpaths required to navigate on GUI
* All the custom functions are present under `Libraries` directory
* `Manual Test Report` directory contains an excel file with Test cases, test case execution status and test evaluation report with suggestions, improvement ideas and bugs
* `Screenshots` directory will hold the screenshots in case of GUI test case failure. Failure screenshots will be named TEST_CASE_NAME-TIMESTAMP.png
* `Videos` directory is to store the execution video captured by the framework. This can toggeled from `locators.py` file by changing `record_video` parameter to `True/False`

### Highlights
* Supported Browsers 

Browsers can be switched by changing the value of `browser` parameter under `common properties` section of `Pages/locators.py` file
```
chromium	- Google Chrome, Microsoft Edge (since 2020), Opera
firefox	- Mozilla Firefox
webkit	- Apple Safari, Mail, AppStore on MacOS and iOS
```

* Screenshots 

In case of test case failure, a screenshot will be captured of the current screen and stored in `Screenshots` directory. Nomenclature followed: TEST-CASE-NAME-TIME-STAMP.png

* Automatic Test Report

An automatic test report will be generated after every test run. Report and Log file can be found in project root directory by the name of `report.html` & `log.html`

* Record Video

This framework has capability to record the video of automated test case execution by toggeling `record_video` parameter of `Pages/locators.py` file. False: No video will be captured, True: Video will be captured for every test executed and will be stored in `Videos` directory.

* Headless Execution

Execution can easily be switched to headless by changing the value of `headless_driver` parameter in `Pages/locators.py` file.


## How To Execute Test Cases

```
git clone https://github.com/anujteotia/assignment-rf-selenium-pom.git
cd into/project_root_directory
robot Tests/
```
* Only API test cases can also be executed by running `robot -i API_TEST Tests/` command from project root directory
* Same way only GUI test cases can also be executed by running `robot -i GUI_TEST Tests/` command from project root directory

> After every execution a test report and log file will be generated under project root directory by the name of `report.html` & `log.html`


#                                                          THE END
