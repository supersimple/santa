class Member
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :email, :type => String, :index => true
  field :name, :type => String
  
  attr_accessor :email, :name
  
end
