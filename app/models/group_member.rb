class GroupMember
  include NoBrainer::Document
  include NoBrainer::Document::Timestamps
  
  belongs_to :member
  belongs_to :group
  
end
