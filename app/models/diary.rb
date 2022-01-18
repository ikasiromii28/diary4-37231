class Diary < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :text, presence: true

  def self.search(search)
    if search != ''
      Diary.where('text LIKE(?)', "%#{search}%")
    else
      Diary.all
    end
  end
end
