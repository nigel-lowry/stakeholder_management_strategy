Given(/^the stakeholder has "([^"]*)" power\/influence$/) do |p|
  power = p
end

And(/^they have "([^"]*)" interest in the project$/) do |i|
  interest = i
end

Then(/^the management strategy should be "([^"]*)"$/) do |s|
  expect(StakeholderManagementStrategy.strategy(power: power, interest: interest)).to eq(s)
end