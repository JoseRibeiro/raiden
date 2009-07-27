require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/index.html.erb" do
  include TasksHelper

  before(:each) do
    assigns[:tasks] = [
      stub_model(Task,
        :story_id => 1,
        :description => "value for description"
      ),
      stub_model(Task,
        :story_id => 1,
        :description => "value for description"
      )
    ]
  end

  it "renders a list of tasks" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for description".to_s, 2)
  end
end
