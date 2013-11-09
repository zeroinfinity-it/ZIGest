class Variable < ActiveRecord::Base
	serialize :var
	belongs_to :users
	validates :user_id, :modname, :var, presence: true
end
