class Group
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :title, :type => String
  field :description, :type => String
  field :active, :type => Boolean
  belongs_to :user
  has_many :group_members
  has_many :members, through: :group_members
  
  attr_accessor :title, :description, :active, :user_id
  
  def shuffle_members
    self.members
  end
  
end
