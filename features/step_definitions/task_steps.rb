Given /^I have no task$/ do
  Task.delete_all
end

Then /^I should have ([0-9]+) task$/ do |count|
  Task.count.should == count.to_i
end

