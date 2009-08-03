require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/stories/show.html.erb" do
  include StoriesHelper
  before(:each) do
    @story = Story.new(:id => "1", :title => "value for title", :description => "value for description")
    @story.id = "1"

    @story.tasks.build(:description => "value for description")
    @story.tasks.build(:description => "value for description")
    assigns[:story] = @story
    #assigns[:story] = @story = stub_model(Story,
    #  :title => "value for title",
     # :description => "value for description",
     # :tasks => @tasks)
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ title/)
    response.should have_text(/value\ for\ description/)
  end

  it "should render the task par" do
    template.should_receive(:render).with(:partial => @story.tasks).and_return("value for tasks")
    render
    p 'aaaaaaaaaaaa', response.body
     response.body.should have_text("value for tasks")
  end

end

