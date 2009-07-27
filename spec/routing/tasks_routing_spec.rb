require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TasksController do

  before(:all) do
    @story_id = "1"
  end

  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "tasks", :action => "index", :story_id => @story_id).should ==
      "/stories/#{@story_id}/tasks"
    end

    it "maps #new" do
      route_for(:controller => "tasks", :action => "new", :story_id => @story_id).should ==
      "/stories/#{@story_id}/tasks/new"
    end

     it "maps #show" do
      route_for(:controller => "tasks", :action => "show", :id => "1", :story_id => @story_id).should ==
      "/stories/#{@story_id}/tasks/1"
    end

    it "maps #edit" do
      route_for(:controller => "tasks", :action => "edit", :id => "1", :story_id => @story_id).should ==
      "/stories/#{@story_id}/tasks/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "tasks", :action => "create", :story_id => @story_id).should ==
      {:path => "/stories/#{@story_id}/tasks", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "tasks", :action => "update", :id => "1", :story_id => @story_id).should ==
      {:path =>"/stories/#{@story_id}/tasks/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "tasks", :action => "destroy", :id => "1", :story_id => @story_id).should ==
      {:path =>"/stories/#{@story_id}/tasks/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/stories/#{@story_id}/tasks").should ==
      {:controller => "tasks", :action => "index", :story_id => @story_id}
    end

     it "generates params for #new" do
      params_from(:get, "/stories/#{@story_id}/tasks/new").should ==
      {:controller => "tasks", :action => "new", :story_id => @story_id}
    end

    it "generates params for #create" do
      params_from(:post, "/stories/#{@story_id}/tasks").should ==
      {:controller => "tasks", :action => "create", :story_id => @story_id}
    end

    it "generates params for #show" do
      params_from(:get, "/stories/#{@story_id}/tasks/1").should ==
      {:controller => "tasks", :action => "show", :id => "1", :story_id => @story_id}
    end

    it "generates params for #edit" do
      params_from(:get, "/stories/#{@story_id}/tasks/1/edit").should ==
      {:controller => "tasks", :action => "edit", :id => "1", :story_id => @story_id}
    end

    it "generates params for #update" do
      params_from(:put, "/stories/#{@story_id}/tasks/1").should ==
      {:controller => "tasks", :action => "update", :id => "1", :story_id => @story_id}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/stories/#{@story_id}/tasks/1").should ==
      {:controller => "tasks", :action => "destroy", :id => "1", :story_id => @story_id}
    end
  end

end

