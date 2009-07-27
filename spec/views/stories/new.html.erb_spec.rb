require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/stories/new.html.erb" do
  include StoriesHelper

  before(:each) do
    assigns[:story] = stub_model(Story,
      :new_record? => true,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders new story form" do
    render

    response.should have_tag("form[action=?][method=post]", stories_path) do
      with_tag("input#story_title[name=?]", "story[title]")
      with_tag("input#story_description[name=?]", "story[description]")
    end
  end
end
