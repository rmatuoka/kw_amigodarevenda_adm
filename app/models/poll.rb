class Poll < ActiveRecord::Base
  has_many :poll_question
  attr_accessible :name, :multiple, :data_inicio, :data_fim, :published
end
