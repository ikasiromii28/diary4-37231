class DiariesController < ApplicationController
  before_action :set_diary, only: [:edit, :show]

  def index
    @diaries = Diary.all
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
  end

  def destroy
    diary = Diary.find(params[:id])
    diary.destroy
  end

  def edit
  end

  def update
    diary = Diary.find(params[:id])
    diary.update(diary_params)
  end

  def show
  end

  private

  def diary_params
    params.require(:diary).permit(:name, :image, :text)
  end

  def set_diary
    @diary = Diary.find(params[:id])
  end
end
