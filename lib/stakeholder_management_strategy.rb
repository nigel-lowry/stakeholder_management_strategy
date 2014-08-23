require "stakeholder_management_strategy/version"

module StakeholderManagementStrategy
  def self.strategy(power:, interest:)
    return :ignore if power == :no and interest == :no
  end
end
