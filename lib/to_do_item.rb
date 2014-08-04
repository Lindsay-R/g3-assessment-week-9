class ToDoItem < ActiveRecord::Base

  def self.authenticate(body)
    find_by(body: body)
  end

end
