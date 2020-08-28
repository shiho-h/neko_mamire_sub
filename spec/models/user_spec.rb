require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'バリデーションのテスト' do
  	let(:user) { build(:user) }
    subject { test_user.valid? }
    context 'nameカラム' do
    	let(:test_user) { user }
    	it '空欄でないこと' do
    		test_user.name = ''
    		is_expected.to eq false;
      	end
	end

	context 'emailカラム' do
		let(:test_user) { user }
		it '空欄でないこと' do
			test_user.email =''
			is_expected.to eq false;
		end
	end
  end

  describe 'アソシエーションのテスト' do
    context 'CatImageモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:cat_images).macro).to eq :has_many
      end
    end
    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:comments).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Bookmarkモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:bookmarks).macro).to eq :has_many
      end
    end
    context 'BookmarkCatImageモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:bookmark_cat_images).macro).to eq :has_many
      end
    end
  end

end