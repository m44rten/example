class Order < ActiveRecord::Base
  belongs_to :personen
  has_many :documents
end
