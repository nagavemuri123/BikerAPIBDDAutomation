Feature: CityBike API

  Scenario: Fetch all the networks which returns the exact location of city bikes around the world with json format
    Given accept json format
    When I do Get request to fetch all networks endpoint
    Then response status code should be "200"

  Scenario: verify that the city Frankfurt is in Germany and return the city’s corresponding latitude and longitude.
    Given accept json format
    When I do Get request with href value
    Then i should see response status code should be "200"
    And I verify the city Frankfurt is in Germany
    And I get the city corresponding latitude and longitude

  Scenario: Fetch the network by valid netwrok id
    Given accept json format
    When I do Get request to fetch network by valid networkid
    Then response status code should be "200"

  Scenario: Fetch the network by invalidnetwrok id
    Given accept json format
    When I do Get request to fetch the network by invalidnetworkid endpoint
    Then response status code should be "404"

  Scenario: Validate the field filtering endpoint by id,name,href
    Given accept json format
    When I do Get request with field filters id,name,href endpoint
    Then response status code should be "200"
