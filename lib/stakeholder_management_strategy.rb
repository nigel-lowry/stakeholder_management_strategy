require "stakeholder_management_strategy/version"

@@LEVELS = [:no, :some, :high]

module StakeholderManagementStrategy
  def self.strategy(power:, interest:)
    raise unless power.in? @@LEVELS
    raise unless interest.in? @@LEVELS

    return :ignore if power == :no and interest == :no
    return :keep_informed if power == :no and (interest == :some or interest == :high)
    return :keep_onside if power == :some
    return :watch if power == :high and interest == :no
    return :keep_satisfied if power == :high and interest == :some
    return :constant_active_management if power == :high and interest == :high
  end
end
