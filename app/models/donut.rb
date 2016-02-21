class Donut < ActiveRecord::Base
  enum shape: %i{donut filled hole fritter}

  validates_presence_of [:title, :flavor, :calories, :shape]

  def readonly?
    false
  end
end
