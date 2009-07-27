require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TasksController do

  def mock_task(stubs={})
    @mock_task ||= mock_model(Task, stubs)
  end

  describe "GET index" do
    it "assigns all tasks as @tasks" do
      Task.stub!(:find_by_story_id).with("1").and_return([mock_task])
      get :index, :story_id => 1
      assigns[:tasks].should == [mock_task]
    end
  end

end

