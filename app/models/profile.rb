class Profile < ActiveRecord::Base
  belongs_to :user
  validates :prof_pic, presence: true
  validates :bg_pic, presence: true
  
  has_attached_file :prof_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :prof_pic, content_type: /\Aimage\/.*\Z/
  has_attached_file :bg_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :bg_pic, content_type: /\Aimage\/.*\Z/

end
