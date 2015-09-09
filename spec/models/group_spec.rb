require 'rails_helper'

RSpec.describe Group, :type => :model do

  describe '.title' do
    
    it 'returns title' do
      # verify
      user = User.new(name: 'Tim', email: 'tim@mailinator.com')
      group = Group.new(title: 'Office Holiday Party', description: 'Twenty dollar gift limit. Will be held on December 16, 2015.', active: true, user_id: user.id)
      expect(group.title).to eq('Office Holiday Party')
    end

  end
  
  describe '.shuffle_members' do
    it 'returns pairs of givers and receivers where no pairs contain the same user' do
      
    end
  end

end