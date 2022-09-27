class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.map(&:actor)
  end

  def locations
    (auditons.map(&:location)).uniq
  end

  def lead
    hired = auditions.select(&:hired)
    if hired.length >= 1
      hired[0]
    else
      'no actor has been hired for this role'
    end
  end

  def understudy
    hired = auditions.select(&:hired)
    if hired.length >= 2
      hired[1]
    else
      'no actor has been hired for understudy for this role'
    end
  end

end
