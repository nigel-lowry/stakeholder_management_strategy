require "stakeholder_management_strategy/version"
require 'active_support/all'

module StakeholderManagementStrategy
  @@LEVELS = [:no, :some, :high]

  def self.strategy(power:, interest:)
    raise unless power.in? @@LEVELS and interest.in? @@LEVELS

    case power
      when :high
        case interest
          when :no
            :watch
          when :some
            :keep_satisfied
          when :high
            :constant_active_management
        end
      when :some
        :keep_onside
      when :no
        case interest
          when :no
            :ignore
          else
            :keep_informed
        end
    end
  end
end
