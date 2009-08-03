require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/_task.html.erb" do
  include TasksHelper

  before(:each) do
    @story = Story.new
    @story.tasks.build(:description => "value for description")
    @story.tasks.build(:description => "value for description")
  end

  it "should renders a list of tasks" do
    render :partial => @story.tasks
    response.should have_tag("p", "Description: value for description", 2)
  end
end

