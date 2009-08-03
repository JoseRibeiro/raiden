require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TasksController do

  def mock_task(stubs={})
    @mock_task ||= mock_model(Task, stubs)
  end

  describe "POST create" do
    before(:each) do
        @story_id = "1"
        @story = Story.new
        @task = mock_task(:save => false)

        Story.stub!(:find).with(@story_id).and_return(@story)
        @story.tasks.stub!(:build).with({"these"=>"params"}).and_return(@task)
    end

    describe "with valid params" do
      it "should save the task" do
        @task.should_receive(:save)
        post :create, :task => {:these => 'params'}, :story_id => @story_id
      end

      it "should redirects to the list of stories" do
        post :create, :task => {:these => 'params'}, :story_id => @story_id
        response.should redirect_to(stories_url)
      end
    end

  end

end

