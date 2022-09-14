# UI Automation workshops
* Selenium IDE
* Robotframework + SeleniumLibrary

## Selenium IDE + [Selenium runner](https://www.selenium.dev/selenium-ide/docs/en/introduction/command-line-runner)

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
