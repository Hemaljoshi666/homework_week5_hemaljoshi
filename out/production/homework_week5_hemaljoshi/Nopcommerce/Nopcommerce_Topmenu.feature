Feature: Bookcategory

  Background:  I should be able to see homepage
    Given  I enter URL   "http://demo.nopcommerce.com"in browser
    And    I am on page

  Scenario Outline: i should be able to see top menu tabs on homepage with categories
    When  I am on home page
    Then  i should be able to see top menu tabs on homepage with categories
    Then  I should be able to see top menu tabs with "<categories>"

    Examples:
      | categories       |
      | Computer         |
      | Electronic       |
      | Apparel          |
      | Digital download |
      | Books            |
      | Jewellery        |
      | Gift card        |

  Scenario Outline:  i should be able to see bookpage with filters

    When   I select book category from top menu tabs on home page
    Then   I shold be navigate to book category
    And    I should be able to see "< filters>"

  Example:
  |Filters|
  |Short By|
  |Display|
  |The Grid|
  |List tab|

  Scenario Outline: I should be able to see list of term of each filter
    Given   I am on book page
    When    I click on "<Filter>"
    Then    I shoud be able to see "<List>" in dropdown menu
    Examples:
      | Filter  | List                                                                         |
      | Sort by | Name: A to Z, Name Z to A, Price: Low to High, Price: High to Low,Created on |
      | Display | 3,6,9

  Scenario Outline: : I shold be able choose any filter option with specific result
    Given I am not book page
    When I click on "<Filter>"
    And  I click on any "<Option>"
    Then I should be able to choose any filter option from the list
    And  I should be able to see "<Result>"

    Examples:
      | filter  | option             | result
      | Sort by | Name: A to Z       | sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name: Z to A       | sorted product with the product name in alphabetical order Z to A |
      | Sort by | Price: Low to high | sorted product with the price in descending order                 |
      | Sort by | Price: High to Low | sorted product with the price in asending order                   |
      | Sort by | Created on         | recentely added product should be show  first                     |
      | Display | 3                  | 3 producgts in one page                                           |
      | Display | 6                  | 6 Products in a page                                              |
      | Display | 9                  | 9 product in a page                                               |


  Scenario Outline:  I should be able to see product display format according display format type as per given picture
  in srs document
    Given  I am on book page
    When   I click on "<dispay format icon>"
    Then   I should be able to see product display format type as Per given in SRS document

    Examples:
      | display format icon |
      | Grid                |
      | List                |




















