require 'rails_helper'

RSpec.describe GroupMember, :type => :model do

  describe '.name' do
    
    it 'returns name' do
      # verify
      user = User.new(name: 'Tim', email: 'tim@mailinator.com')
      expect(user.name).to eq('Tim')
    end

  end

end
