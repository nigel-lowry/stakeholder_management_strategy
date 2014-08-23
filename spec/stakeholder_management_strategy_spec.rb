require 'spec_helper'
require 'stakeholder_management_strategy'

describe StakeholderManagementStrategy do
  describe '.strategy' do
    context 'errors' do
      specify { expect { StakeholderManagementStrategy.strategy }.to raise_error }
      specify { expect { StakeholderManagementStrategy.strategy power: :no }.to raise_error }
      specify { expect { StakeholderManagementStrategy.strategy interest: :no }.to raise_error }

      specify { expect { StakeholderManagementStrategy.strategy power: :no, interest: nil }.to raise_error }
      specify { expect { StakeholderManagementStrategy.strategy power: nil, interest: :no }.to raise_error }
      specify { expect { StakeholderManagementStrategy.strategy power: nil, interest: nil }.to raise_error }

      specify { expect { StakeholderManagementStrategy.strategy power: :no, influence: :no }.to raise_error }

      specify { expect { StakeholderManagementStrategy.strategy power: :no, interest: :low }.to raise_error }
      specify { expect { StakeholderManagementStrategy.strategy power: :low, interest: :no }.to raise_error }

      specify { expect { StakeholderManagementStrategy.strategy power: :no, interest: :no, name: 'Barry' }.to raise_error }
    end

    context 'strategies' do
      specify { expect(StakeholderManagementStrategy.strategy power: :no, interest: :no).to eq(:ignore) }
      specify { expect(StakeholderManagementStrategy.strategy power: :no, interest: :some).to eq(:keep_informed) }
      specify { expect(StakeholderManagementStrategy.strategy power: :no, interest: :high).to eq(:keep_informed) }

      specify { expect(StakeholderManagementStrategy.strategy power: :some, interest: :no).to eq(:keep_onside) }
      specify { expect(StakeholderManagementStrategy.strategy power: :some, interest: :some).to eq(:keep_onside) }
      specify { expect(StakeholderManagementStrategy.strategy power: :some, interest: :high).to eq(:keep_onside) }

      specify { expect(StakeholderManagementStrategy.strategy power: :high, interest: :no).to eq(:watch) }
      specify { expect(StakeholderManagementStrategy.strategy power: :high, interest: :some).to eq(:keep_satisfied) }
      specify { expect(StakeholderManagementStrategy.strategy power: :high, interest: :high).to eq(:constant_active_management) }
    end
  end
end