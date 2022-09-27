class Audition < ActiveRecord::Base
  belongs_to :role, foreign_key: "role_id"

  def call_back
    change(hired: true)
  end

end