require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/stories/show.html.erb" do
  include StoriesHelper
  before(:each) do
    assigns[:story] = @story = stub_model(Story,
      :title => "value for title",
      :description => "value for description"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ description/)
  end
end
