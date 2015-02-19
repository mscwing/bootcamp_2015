Feature: Getting Started

  Scenario Outline: Opening a browser

    Given I launch "<browser>"
    Then a "<browser>" instance will open

  Examples:
    | browser |
    | IE |
#| Firefox |
#| Chrome  |
#| Phantomjs |
#| Opera |