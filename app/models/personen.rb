class Personen < ActiveRecord::Base
  belongs_to :bedrijf
  validates_formatting_of :email, using: :email
end
