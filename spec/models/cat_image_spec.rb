require 'rails_helper'

RSpec.describe 'CatImageモデルのテスト', type: :model do
  describe "バリデーションのテスト" do
    let(:user) { create(:user) }
    let!(:cat_image) { build(:cat_image, user_id: user.id) }

    context 'catnameカラム' do
      it '空欄でないこと' do
        cat_image.catname = ''
        expect(cat_image.valid?).to eq false;
      end
    end
    context 'memoカラム' do
      it '空欄でないこと' do
        cat_image.memo = ''
        expect(cat_image.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(CatImage.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(CatImage.reflect_on_association(:comments).macro).to eq :has_many
      end
    end
    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(CatImage.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
    context 'Bookmarkモデルとの関係' do
      it '1:Nとなっている' do
        expect(CatImage.reflect_on_association(:bookmarks).macro).to eq :has_many
      end
    end
    context 'Userモデルとの関係' do
      it '1:Nとなっている' do
        expect(CatImage.reflect_on_association(:users).macro).to eq :has_many
      end
    end
  end
end