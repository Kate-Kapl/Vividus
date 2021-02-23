Scenario: Enter New User email
Given I am on the main application page
When I click on a button with the name 'Sign up'
Then an element with the name 'Sign up for your account' exists

When I initialize the STORY variable `testUserEmail` with value `#{randomInt(10000, 30000)}test@mail.com`
When I enter `${testUserEmail}` in field located `By.xpath(//input[@id='email'])`
When I click on  element located `By.xpath(//input[@id='signup-submit'])`

Scenario: Sing Up New User
When I wait until element located `By.xpath(//h5[text()='Sign up for your account'])` appears
When I enter `<FullName>` in field located `By.xpath(//input[@id='displayName'])`
When I enter `<Password>` in field located `By.xpath(//input[@id='password'])`
When I click on an element by the xpath '//button[@id='signup-submit']'

Examples:
|FullName					|Password								|
|#{generate(Name.FullName)}	|#{generate(regexify '[asdfghj]{10}')}	|
