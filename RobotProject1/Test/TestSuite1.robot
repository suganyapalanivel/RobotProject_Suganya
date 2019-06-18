*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log     I am in SS
Suite Teardown    Log     I am in ST
Test Setup    Log     I am in TS
Test Teardown    Log     I am in TT

Default Tags     sanity

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello World...   
    
MyFirstTest1
    Log    Hello World1... 
    Set Tags     regression
    Remove Tags     regression
    
MyFirstTest2
    Log    Hello World2...  
    
MyFirstTest3
    Log    Hello World3... 
    
# FirstSeleniumTest
    # Login
    # # Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log     Test Completed
    
*** Variables ***
${url}    https://google.com  
@{input}     Automation step by step   
&{input1}     input=Automation step by step

*** Keywords ***
Login
    Open Browser    ${url}     chrome  
    Set Browser Implicit Wait    5
    Input Text      name=q     ${input1}[input]
    Press Keys    name=q     ENTER

    