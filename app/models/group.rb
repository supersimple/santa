class Group
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title, :type => String
  field :description, :type => String
  field :active, :type => Boolean
  belongs_to :user
  
end
