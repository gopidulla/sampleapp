class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  def email_required?
    false
  end

  def email_changed?
    false
  end
   
   has_many :complaints do
      
      def today
      where(:created_time => (Time.zone.now.beginning_of_day..Time.zone.now))
    end

    def this_week
      where(:created_time => (Time.zone.now.beginning_of_week..Time.zone.now))
    end
   end

   def updated_at
    read_attribute(:updated_at)
  end

  def updated_at=(value)
    compute_updated_at
  end

  private

  def compute_updated_at
    write_attribute(:updated_at, Time.now + 1.month)
  end

 
end
