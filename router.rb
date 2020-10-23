class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  def print_actions
    puts "-" * 80
    puts "1 - List Tasks"
    puts "2 - Create a Task"
    puts "3 - Mark task as done"
    puts "4 - Remove task"
    puts "-" * 80

    puts "Enter option:"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.mark_as_done
    when 4 then @controller.destroy
    end
  end

end