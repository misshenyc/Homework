require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  subject(:user) {User.new(email:'abc', password:'testing')}

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  # it 'should validate is_password' do
  #   tester = User.new("abc","testing_password")
  #   tester.is_password?(testing_password)
  #   expect()
  # end

end
