require 'rails_helper'

RSpec.describe 'Commentモデルのテスト', type: :model do
  describe "バリデーションのテスト" do
    let(:user) { create(:user) }
    let(:cat_image) { create(:cat_image) }
    let!(:comment) { build(:comment, user_id: user.id) }
    let!(:comment) { build(:comment, cat_image_id: cat_image.id) }

    context 'messageカラム' do
      it '空欄でないこと' do
        comment.message = ''
        expect(comment.valid?).to eq false;
      end
    end
  end
  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Comment.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'CatImageモデルとの関係' do
      it 'N:1となっている' do
        expect(Comment.reflect_on_association(:cat_image).macro).to eq :belongs_to
      end
    end
  end
end