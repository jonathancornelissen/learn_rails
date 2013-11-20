Feature: Accessors
  In order to understand rails accessors
  As a learn_rails gem user
  I want to see the right ruby code in the terminal

  Scenario: attr_reader
    When I run `learn rails attr_reader :whatever`
    And  the output should contain "# def whatever"
    And  the output should contain "#  @whatever"
    And  the output should contain "# end"

  Scenario: attr_writer
    When I run `learn rails attr_writer :whatever`
    And  the output should contain "# def whatever=(value)"
    And  the output should contain "#  @whatever = value"
    And  the output should contain "# end"

  Scenario: attr_accessor
    When I run `learn rails attr_accessor :whatever`
    And  the output should contain "# def whatever"
    And  the output should contain "#  @whatever"
    And  the output should contain "# end"
    And  the output should contain "# def whatever=(value)"
    And  the output should contain "#  @whatever = value"
    And  the output should contain "# end"

  Scenario: attr_reader with anymodelname
    When I run `learn rails anymodelname attr_reader :whatever`
    And  the output should contain "# def whatever"
    And  the output should contain "#  @whatever"
    And  the output should contain "# end"

  Scenario: attr_writer with anymodelname
    When I run `learn rails anymodelname attr_writer :whatever`
    And  the output should contain "# def whatever=(value)"
    And  the output should contain "#  @whatever = value"
    And  the output should contain "# end"

  Scenario: attr_accessor with anymodelname
    When I run `learn rails anymodelname attr_accessor :whatever`
    And  the output should contain "# def whatever"
    And  the output should contain "#  @whatever"
    And  the output should contain "# end"
    And  the output should contain "# def whatever=(value)"
    And  the output should contain "#  @whatever = value"
    And  the output should contain "# end"

  Scenario: attr_reader with multiple attributes
    When I run `learn rails attr_reader :whatever, :another`
    And  the output should contain "# def whatever"
    And  the output should contain "#  @whatever"
    And  the output should contain "# end"
    And  the output should contain "# def another"
    And  the output should contain "#  @another"
    And  the output should contain "# end"

  Scenario: attr_writer with multiple attrributes
    When I run `learn rails attr_writer :whatever, :another`
    And  the output should contain "# def whatever=(value)"
    And  the output should contain "#  @whatever = value"
    And  the output should contain "# end"
    And  the output should contain "# def another=(value)"
    And  the output should contain "#  @another = value"
    And  the output should contain "# end"

  Scenario: attr_accessor with multiple attributes
    When I run `learn rails attr_accessor :whatever, :another`
    And  the output should contain "# def whatever"
    And  the output should contain "#  @whatever"
    And  the output should contain "# end"
    And  the output should contain "# def whatever=(value)"
    And  the output should contain "#  @whatever = value"
    And  the output should contain "# end"
    And  the output should contain "# def another"
    And  the output should contain "#  @another"
    And  the output should contain "# end"
    And  the output should contain "# def another=(value)"
    And  the output should contain "#  @another = value"
    And  the output should contain "# end"

  Scenario: valid statement but with comma right after
    When I run `learn rails attr_reader :whatever,`
    Then the output should not contain ","

  Scenario: valid statement but with standalone comma after it
    When I run `learn rails attr_reader :whatever ,`
    Then the output should not contain ","
    And  the output should not contain "@ "
