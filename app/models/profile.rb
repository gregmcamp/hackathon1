class Profile < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :prof_pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/avatar.png"
  validates_attachment_content_type :prof_pic, content_type: /\Aimage\/.*\Z/
  has_attached_file :bg_pic, styles: { medium: "300x300>", large: "1000x1000>" }, default_url: "/assets/default_bg.png"
  validates_attachment_content_type :bg_pic, content_type: /\Aimage\/.*\Z/

end
