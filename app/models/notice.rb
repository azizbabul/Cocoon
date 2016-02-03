class Notice < ActiveRecord::Base
	has_many :subjects
 accepts_nested_attributes_for :subjects, :reject_if => :all_blank, :allow_destroy => true

end
