class Complaint < ApplicationRecord
  validates :section, :name, :problem,  :presence => true
  belongs_to :user
  
  

  validate :user_quota, :on => :create

  private 
  def user_quota
   if user.complaints.today.count >= 2
     errors.add(:base, "Exceeds daily limit")
   elsif user.complaints.this_week.count >= 5
     errors.add(:base, "Exceeds weekly limit")
   end
  end

end
