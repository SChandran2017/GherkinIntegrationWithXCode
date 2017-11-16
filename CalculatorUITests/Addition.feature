
Feature: Calculator Addition Operation Testing

        Background:
                Given User is on Calculator Screen

        Scenario: Addition Two Numbers
                Given User taps on 1 
                And User taps on 3
                And User taps on +
                And User taps on 4
                And User taps on =
                Then User sees the final result as 17

        Scenario Outline: Perform same operation for mutliple set of numbers
                Given User taps on <firstNumber>
                And User taps on +
                And User taps on <secondNumber>
                And User taps on =
                Then User sees the final result as <result>

        Examples:
        | firstNumber | secondNumber | result |
        | 2 | 3 | 5 |
        | 3 | 7 | 10 |
