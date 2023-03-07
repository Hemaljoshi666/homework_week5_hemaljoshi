Feature:  Demo Nopcommerce's acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu.

  Background: User is on given URL
    When  User type URL https://demo.nopcommerce.com
    And   User click on Enter button
    Then User is on Given URL

  Scenario: Verify that user can navigate to book category
    When user is on given URL
    And  Click on Books tab on Top Menu.
    Then User is navigated to Books catagory page

  Scenario: Verify that user can see the Books category page with filters and list of product
    When  User is on Given URL
    And lick on Books tap menu
    And  Filters and list tab
    Then Books catagory page is displayed with filters and list tabs

  Scenario:  Verify that can see "Sort by" filter  on book category page
    Given user is on Books catagory page
    When User  ison Book catagory page
    And Check 'Sort by'filter is present
    Then 'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book Category page

    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Display' filter is present
    Then  'Display' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'List' tab is present
    Then  'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in sort by filter
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'Sort by Filter'
    And    Select 'Name 'A to Z Filter
    Then  All products are displayed in alphabetical order

