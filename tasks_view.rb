class TasksView

  def ask_description
    puts 'Enter task description'
    gets.chomp
  end

  def ask_index
    puts 'Enter task index'
    gets.chomp.to_i - 1
  end

  def display(tasks)
    puts "-" * 80
    puts " TASKS LIST"
    puts "-" * 80
    tasks.each_with_index do |task, index|

      done = task.done? ? "[X]" : "[ ]"

      puts "#{index + 1} - #{done} #{task.description}"
    end
    puts "-" * 80
  end

end