class Mood < ActiveHash::Base
  self.data = [
    { id: 1, name: '今日の気分' },
    { id: 2, name: '最高' },
    { id: 3, name: 'いい感じ' },
    { id: 4, name: 'まあまあ' },
    { id: 5, name: 'ふつう' },
    { id: 6, name: 'ぼちぼち' },
    { id: 7, name: 'あんまり' },
    { id: 8, name: 'よくない' },
    { id: 9, name: 'もうダメ' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :diaries
end