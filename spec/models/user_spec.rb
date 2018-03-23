require 'rails_helper'

RSpec.describe "User", type: :model do
  let(:auth) { Hashie::Mash.new(
    uid: 'uid',
    provider: 'provider',
    info: {
      nickname: 'nickname',
      sex: 0,
      headimgurl: 'headimgurl'
    },
    extra: {
      raw_info: {
        unionid: 'unionid'
      }
      })}

  describe "from_omniauth(auth)" do
    it "user created" do
      # byebug
      user = User.from_omniauth(auth)
      user.save
      expect(User.count).to eq 1
    end

    it "all user information correct" do
      user = User.from_omniauth(auth)
      user.save
      expect(user.provider).to eq('provider')
      expect(user.unionid).to eq('unionid')
      expect(user.nickname).to eq('nickname')
      expect(user.sex).to eq(0)
      expect(user.provider).to eq('provider')
      expect(user.uid).to eq('uid')
    end

    it "when user exist" do
      user = User.from_omniauth(auth)
      user.save
      user = User.from_omniauth(auth)
      expect(user.persisted?).to be true
    end

    it "when user not exist" do
      user = User.from_omniauth(auth)
      expect(user.persisted?).to be false
    end
  end
end
