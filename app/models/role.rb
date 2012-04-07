class Role < ActiveRecord::Base
  attr_accessible :person_id, :project_id, :status_id, :title

  belongs_to :project
  belongs_to :status
  belongs_to :person

  validate_presence_of :person_id, :project_id, :status_id, :title


end
