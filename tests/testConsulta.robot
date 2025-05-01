*** Settings ***
Library     RequestsLibrary
Resource    ../variables/config.robot
*** Test Cases ***
Get All Products
    Create Session                 fakeapi                    ${BASE_URL}
    ${response}=                   GET On Session             fakeapi        /products
    Should Be Equal As Integers    ${response.status_code}    200
    Log                            ${response.json()}