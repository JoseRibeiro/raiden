require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/edit.html.erb" do
  include TasksHelper

  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :new_record? => false,
      :story_id => 1,
      :description => "value for description"
    )
  end

  it "renders the edit task form" do
    render

    response.should have_tag("form[action=#{task_path(@task)}][method=post]") do
      with_tag('input#task_story_id[name=?]', "task[story_id]")
      with_tag('input#task_description[name=?]', "task[description]")
    end
  end
end
