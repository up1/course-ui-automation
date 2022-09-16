# UI Automation workshops
* Selenium IDE
* Robotframework + SeleniumLibrary

## [Selenium IDE](https://www.selenium.dev/selenium-ide/) + [Selenium runner](https://www.selenium.dev/selenium-ide/docs/en/introduction/command-line-runner)

Run with google chrome
```
$selenium-side-runner demo_02.side -c "browserName=chrome"
```

Others browsers
* 'internet explorer'
* edge
* firefox
* safari

Run with headlesss chrome
```
$selenium-side-runner -c "goog:chromeOptions.args=[--headless,--nogpu] browserName=chrome" demo_02.side
```

Generate reports in junit report (Node <= 14, npm <= 6)
```
$selenium-side-runner demo_02.side --output-directory=./reports --output-format=junit
```

Start selenium grid server
```
$cd selenium-grid
$docker compose up -d
$docker compose -f docker-compose.yml up --scale chrome=4
```

Run on Selenium Grid
```
$selenium-side-runner --server http://localhost:4444/wd/hub -c "browserName=chrome"
```

## [Robotframework](https://robotframework.org/) + [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)
```
$robot

$robot file_name.robot
```

## Demo
* [Continuous testing with Jenkins](https://github.com/up1/demo-for-test)

## Mocking tools for API
* https://wiremock.org/
* http://www.mbtest.org/
* https://www.npmjs.com/package/json-server
* https://learning.postman.com/docs/designing-and-developing-your-api/mocking-data/setting-up-mock/
* https://docs.cypress.io/guides/guides/network-requests#Stubbing
* https://github.com/mrak/stubby4node
* https://github.com/azagniotov/stubby4j
