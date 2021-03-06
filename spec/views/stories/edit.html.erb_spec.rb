require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/stories/edit.html.erb" do
  include StoriesHelper

  before(:each) do
    assigns[:story] = @story = stub_model(Story,
      :new_record? => false,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders the edit story form" do
    render

    response.should have_tag("form[action=#{story_path(@story)}][method=post]") do
      with_tag('input#story_title[name=?]', "story[title]")
      with_tag('input#story_description[name=?]', "story[description]")
    end
  end
end
