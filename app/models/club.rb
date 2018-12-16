class Club < ApplicationRecord
	has_many :rules, :dependent => :destroy
	accepts_nested_attributes_for :rules, :allow_destroy => :true
end
