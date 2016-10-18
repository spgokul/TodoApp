class TodosController < ApplicationController
	
	def index
		@task = Todo.new
		@task_list = Todo.all
	end

	def new
		@task = Todo.new
	end

	def create
		@task = Todo.new(params[:todo])
		@task.save
		redirect_to '/'
	end

	def show_open_tasks
		@task = Todo.where("status = 0")
	end

	def show_done_tasks
		@task = Todo.where("status = 1")
	end

	def show_archive_tasks
		@task = Todo.where("status = 2")
	end

	def show_priority_tasks
		@task = Todo.order("priority ASC")
	end

	def show
		@task = Todo.find(params[:id])
	end

	def move_to_open_tasks
		@task = Todo.find(params[:id])
		@task.update_attributes(:status => 0)
		redirect_to show_open_tasks_path
	end

	def move_to_archive
		@task = Todo.find(params[:id])
		@task.update_attributes(:status => 2)
		redirect_to show_archive_tasks_path
	end

	def mark_as_done
		@task = Todo.find(params[:id])
		@task.update_attributes(:status => 1)
		redirect_to show_done_tasks_path
	end

	def edit
		@task = Todo.find(params[:id])
	end

	def update
		@task = Todo.find(params[:id])
		@task.update_attributes(params[:todo])
		redirect_to show_open_tasks_path
	end

	def destroy
		Todo.find(params[:id]).destroy
		flash[:success] = "User Destroyed"
		redirect_to root_path
	end
end
