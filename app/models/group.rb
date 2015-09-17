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
    members = self.members
    shuffled_members = members.shuffle
    shifted_shuffled_members = shift_members(shuffled_members.dup)
    @shuffled_pairs = []
    members.each_with_index do |m, i|
      @shuffled_pairs << {shuffled_members[i] => shifted_shuffled_members[i]}
    end
  end
  
  private
  
  def shift_members(arr)
    arr.push arr.first
    arr.shift
    arr
  end
  
end
