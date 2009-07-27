require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/show.html.erb" do
  include TasksHelper
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :story_id => 1,
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ description/)
  end
end
