require "stakeholder_management_strategy/version"
require 'active_support/all'

module StakeholderManagementStrategy
  @@LEVELS = [:no, :some, :high]

  def self.strategy(power:, interest:)
    raise unless power.in? @@LEVELS
    raise unless interest.in? @@LEVELS

    return :ignore if power == :no and interest == :no
    return :keep_informed if power == :no and interest != :no
    return :keep_onside if power == :some
    return :watch if power == :high and interest == :no
    return :keep_satisfied if power == :high and interest == :some
    return :constant_active_management if power == :high and interest == :high
  end
end
