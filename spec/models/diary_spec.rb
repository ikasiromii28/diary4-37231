require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe 'ダイアリーの保存' do
    context 'ダイアリーが投稿できる場合' do
      it '入力項目が全て埋まっている' do
        expect(@diary).to be_valid
      end
      it '画像と本文は入力しなくても投稿できる' do
        @diary.image = ''
        @diary.text = ''
        expect(@diary).to be_valid
      end
    end
    context 'ダイアリーが投稿できない場合' do
      it 'タイトルが空では投稿できない' do
        @diary.title = ''
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Title can't be blank")
      end
      it 'weather_idが空では投稿できない' do
        @diary.weather = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Weather can't be blank")
      end
      it 'weather_idが「天気」では投稿できない' do
        @diary.weather_id = 1
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Weather can't be blank")
      end
      it 'mood_idが空では登録できない' do
        @diary.mood = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Mood can't be blank")
      end
      it 'mood_idが「気分」では登録できない' do
        @diary.mood_id = 1
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Mood can't be blank")
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @diary.user = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("User must exist")
      end
    end
  end
end
