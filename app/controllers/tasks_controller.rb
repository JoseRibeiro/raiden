class TasksController < ApplicationController

  # POST /story/story_id/tasks
  def create
    @story = Story.find(params[:story_id])
    @task = @story.tasks.build((params[:task]))
    @task.save
    redirect_to @story
  end

end

