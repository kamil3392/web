class Project < ActiveRecord::Base
  has_many :tickets
 
  belongs_to :user
  
  validates :title,
  presence: true
  
  validates :description,
  presence: true
  
  validates :user,
  presence: true
  
  def to_s
    title
  end
  
end
