class Todo < ActiveRecord::Base
  #enum priority: [ :High, :Medium, :Low ]
  #enum status: [ :Open, :Done, :Archive ]
  #enum notify: [ :Yes, :No ]
  attr_accessible :deadline, :desc, :notify, :priority, :reminder, :status
end
