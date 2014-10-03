class Declare < ActiveRecord::Base
  belongs_to :user

  enum classification: {todo: 'todo', doing: 'doing'}
end
