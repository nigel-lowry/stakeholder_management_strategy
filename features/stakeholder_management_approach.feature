Feature: Management approach

  As a business analyst
  I want to know what strategy to use with a stakeholder
  So that I can manage them effectively

  Scenario Outline: Management strategy
    Given the stakeholder has "<Power>" power/influence
      And they have "<Interest>" interest in the project
    Then the management strategy should be "<Strategy>"

    Examples:
      | Power | Interest | Strategy                    |
      | No    | No       | Ignore                      |
      | No    | Some     | Keep informed               |
      | No    | High     | Keep informed               |
      | Some  | No       | Keep onside                 |
      | Some  | Some     | Keep onside                 |
      | Some  | High     | Keep onside                 |
      | High  | No       | Watch                       |
      | High  | Some     | Keep satisfied              |
      | High  | High     | Constant, active management |
