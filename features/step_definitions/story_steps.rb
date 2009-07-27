Given /^I have story titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Story.create!(:title => title)
  end
end

Given /^I have no story$/ do
  Story.delete_all
end

Then /^I should have ([0-9]+) story$/ do |count|
  Story.count.should == count.to_i
end

