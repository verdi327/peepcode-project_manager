class People < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  validates_presence_of :first_name, :last_name

  before_save :cleanup

  scope :all_lazy, select('*')
  scope :find_lazy, lambda {|id| where(primary_key => id) }
  scope :all_ordered_last, all_lazy.order("last_name ASC")

  def name
    "#{first_name} #{last_name}"
  end

  private

  def cleanup
    self[:first_name] = self[:first_name].capitalize
  end


end
