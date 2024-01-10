require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(name: 'Nilab', email: 'Nilab@gmail.com', password: 'abcdef') }
  it 'the model is valid' do
    expect(user).to be_valid
  end
  it 'Name must not be blank.' do
    user.name = ''
    expect(user).not_to be_valid
  end
  it 'email must not be blank.' do
    user.email = ''
    expect(user).not_to be_valid
  end
end
