require 'spec_helper'
require 'stakeholder_management_strategy'

describe StakeholderManagementStrategy do
  describe '.strategy' do
    specify { expect { StakeholderManagementStrategy.strategy }.to raise_error }
    specify { expect { StakeholderManagementStrategy.strategy power: :no }.to raise_error }
    specify { expect { StakeholderManagementStrategy.strategy interest: :no }.to raise_error }

    specify { expect { StakeholderManagementStrategy.strategy power: :no, interest: nil }.to raise_error }
    specify { expect { StakeholderManagementStrategy.strategy power: nil, interest: :no }.to raise_error }
    specify { expect { StakeholderManagementStrategy.strategy power: nil, interest: nil }.to raise_error }

  end
end