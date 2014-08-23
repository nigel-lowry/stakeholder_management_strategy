Given /^the stakeholder has (#{CAPTURE_A_WORD}) power\/influence$/ do |p|
  @power = p
end

And /^(#{CAPTURE_A_WORD}) interest in the project$/ do |i|
  @interest = i
end

Then /^the management strategy should be (#{CAPTURE_A_WORD})$/ do |s|
  expect(StakeholderManagementStrategy.strategy(power: @power, interest: @interest)).to eq(s)
end