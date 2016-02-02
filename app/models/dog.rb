class Dog < ActiveRecord::Base
	has_secure_password
  validates_presence_of :name, :birthday, :city, :state, :email

  validates_uniqueness_of :email

  def birthday?
    birthday.month == Time.now.month && birthday.day == Time.now.day
  end

  def age
    Time.now.year - birthday.year
  end

  def location
    city + ", " + state
  end

  def puppy?
    age < 1
  end

  def age_in_dog_years
    age * 7
  end

end
