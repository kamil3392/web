class User < ActiveRecord::Base
  has_secure_password
  
  has_many :projects,dependent: :destroy
  
  validates :firs_name,
  presence: true
  validates :last_name,
  presence: true
  validates :email,
  presence: true,
  format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    }
  
  def to_s
    "#{firs_name} #{last_name} "
  end
  
  
end
