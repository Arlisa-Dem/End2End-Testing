@e2e @ui_test
Feature: US05_Admin_can_create_room

  Background: Sign in as admin
    Given user goes to "https://medunna.com"
    When user clicks on user icon
    And user clicks on sign in option
    And user enters username "mark_twain"
    And user enters password "Mark.123"
    And user clicks on sign in submit button


    Scenario Outline: Create room
      Given user clicks ItemsAndTitles
      When user clicks on room option
      And user clicks on create a new room button
      And user enters room number "<room number>"
      And user selects "<room type>"
      And user clicks on status
      And user enters price "<price>"
      And user enters description "<description>"
      And user clicks on save button
      Then assert alert message
      And close the app
      Examples:
        | room number | room type | price | description |
        | 242343334 | DELUXE |400 | Created for e2e test 1 |
        | 342523219697 | TWIN | 300 | Created for e2e test 2 |
        | 893848798127 | SUITE | 350 | Created for e2e test 3 |
        | 435345677890 | DAYCARE | 250 | Created for e2e test 4 |





