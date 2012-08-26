Feature: Valet Parking

  Background:
    Given I chose "Valet Parking"

  Scenario Outline: 5 hours
    Given I entered on "<entry_date>" at "<entry_time>"
    When I leave on "<leaving_date>" at "<leaving_time>"
    Then the estimated parking cost is "<estimated_parking_cost>"

  Examples:
    | entry_date | entry_time | leaving_date | leaving_time | estimated_parking_cost |
    | 08/20/2012 | 12:00 AM   | 08/21/2012   | 12:00 AM     | $ 18.00                |
    | 08/20/2012 |  5:00 AM   | 08/20/2012   | 10:00 AM     | $ 12.00                |
    | 08/20/2012 |  5:00 AM   | 08/20/2012   | 10:01 AM     | $ 18.00                |

    | 08/20/2012 | 11:00 AM   | 08/20/2012   |  3:00 PM     | $ 12.00                |

  # Nonsense input
    |            | 25:00 AM   | 08/20/2012   |  3:00 PM     | $ 12.00                |
