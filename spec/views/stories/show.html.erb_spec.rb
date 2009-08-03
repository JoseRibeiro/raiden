require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/stories/show.html.erb" do
  include StoriesHelper
  before(:each) do
    @story = Story.new(:title => "value for title", :description => "value for description")
    @story.id = "1"

    @story.tasks.build(:description => "value for description")
    @story.tasks.build(:description => "value for description")
    assigns[:story] = @story
    #assigns[:story] = @story = stub_model(Story,

    #  :title => "value for title",
     # :description => "value for description",
     # :tasks => @story.tasks)
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ description/)
  end

  it "should render the tasks partial" do
    template.should_receive(:render).with(:partial => @story.tasks).and_return("id das tasks")
    render
    response.should have_tag("div") do |div|
    end
    pending
  end

  it "should render a form for new task" do
    render
    response.should have_tag("form") do |form|
    end
    pending
  end

end

