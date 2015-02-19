Feature: Getting Started

  Scenario Outline: Opening a browser

    Given I launch "<browser>"
    Then a "<browser>" instance will open

  Examples:
    | browser |
    |  |
#| Firefox |
#| Chrome  |
#| Phantomjs |
#| Opera |

  Scenario: Visit USA.gov
    Given I am on the USA.gov homepage
