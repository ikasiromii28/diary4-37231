class Diary < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :title, presence: true
  validates :mood_id, numericality: { other_than: 1 ,message: "can't be blank" } 
  validates :weather_id, numericality: { other_than: 1 ,message: "can't be blank" } 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :mood
  belongs_to :weather

  def self.search(search)
    if search != ''
      Diary.where('text LIKE(?)', "%#{search}%")
    else
      Diary.all
    end
  end
end
