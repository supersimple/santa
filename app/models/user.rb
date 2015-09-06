class User
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :name, :type => String, :index => true
  field :email, :type => String, :index => true
  field :user_data
  
  attr_accessor :name, :email
end
