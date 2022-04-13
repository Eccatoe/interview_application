require 'rails_helper'

RSpec.describe User, type: :model do
  it 'returns user full name' do
    user=User.create(first_name: 'Aida', last_name:  'Buckridge')
    expect(user.full_name)to eq 'Aida Buckridge'
  end
  it 'has a first name' do
    user=User.create(
      id:  1,
      last_name:  'Buckridge',
      email:  'tambra@harber.co',
      city:  'Port Evetteborough',
      state:  'Indiana',
      score: 3
    )
    expect(user).to_not be_valid
    user.first_name="Aida"
    expect(user).to be_valid
  end
  it 'has a last name' do
    user=User.create(
      id:  1,
      first_name:  'Aida',
      email:  'tambra@harber.co',
      city:  'Port Evetteborough',
      state:  'Indiana',
      score: 3
    )
    expect(user).to_not be_valid
    user.last_name="Buckridge"
    expect(user).to be_valid
  end
  it 'has an email' do
    user=User.create(
      id:  1,
      first_name: 'Aida',
      last_name:  'Buckridge',
      city:  'Port Evetteborough',
      state:  'Indiana',
      score: 3
    )
    expect(user).to_not be_valid
    user.email='tambra@harber.co'
    expect(user).to be_valid
  end
  it 'has a city' do
    user=User.create(
      id:  1,
      first_name: 'Aida',
      last_name:  'Buckridge',
      email:  'tambra@harber.co',
      city:  'Port Evetteborough',
      state:  'Indiana',
      score: 3
    )
    expect(user).to_not be_valid
    user.city='Port Evetteborough'
    expect(user).to be_valid
  end
  it 'has a state' do
    user=User.create(
      id:  1,
      first_name: 'Aida',
      last_name:  'Buckridge',
      email:  'tambra@harber.co',
      city:  'Port Evetteborough',
      score: 3
    )
    expect(user).to_not be_valid
    user.state='Indiana'
    expect(user).to be_valid
  end
  it 'has a score' do
    user=User.create(
      id:  1,
      first_name: 'Aida',
      last_name:  'Buckridge',
      email:  'tambra@harber.co',
      city:  'Port Evetteborough'
    )
    expect(user).to_not be_valid
    user.score:3
    expect(user).to be_valid
  end



end
