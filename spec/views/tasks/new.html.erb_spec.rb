require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/new.html.erb" do
  include TasksHelper

  before(:each) do
    assigns[:task] = stub_model(Task,
      :new_record? => true,
      :story_id => 1,
      :description => "value for description"
    )
  end

  it "renders new task form" do
    render

    response.should have_tag("form[action=?][method=post]", tasks_path) do
      with_tag("input#task_story_id[name=?]", "task[story_id]")
      with_tag("input#task_description[name=?]", "task[description]")
    end
  end
end
