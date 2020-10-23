require_relative 'task'
require_relative 'tasks_view'

class TasksController

  def initialize(repository)
    @view = TasksView.new
    @repository = repository
  end

  def create
    # Get task description
    description = @view.ask_description
    # Create new task
    task = Task.new(description)
    # Add to repository
    @repository.add(task)
  end

  def list
    # Get all tasks in repository
    tasks = @repository.all

    # Send tasks to list in view
    @view.display(tasks)
  end

  def mark_as_done
    # Show all tasks
    list
    # Ask index to mark as done
    index = @view.ask_index
    # Find task by index
    task = @repository.find(index)
    # Call the done!
    task.done!
    # List all tasks again
    list
  end

  def destroy
    # show all tasks
    list
    # aks index to destroy
    index = @view.ask_index
    # Remove by index
    @repository.remove(index)
    # List all tasks again
    list
  end



end