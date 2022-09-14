# UI Automation workshops
* Selenium IDE
* Robotframework + SeleniumLibrary

## Selenium IDE + Selenium runner

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

Run on Selenium Grid
```
$selenium-side-runner --server http://localhost:4444/wd/hub -c "browserName=chrome"
```

## Robotframework + SeleniumLibrary
```
$robot

$robot file_name.robot
```
