class ReviewsController < ApplicationController
  before_action :set_cd, only: [:show, :new, :create, :edit]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.attributes = {
      cd_id: params[:cd_id],
      user_id: current_user.id
    }
    if @review.save
      redirect_to @review.cd, notice: "レビューを登録しました。"
    else
      render :new
    end
  end

  def show
  end


  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review.cd, notice: "レビューを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to @review.cd, notice: "レビューを削除しました。"
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :evaluation)
  end

  def set_cd
    @cd = Cd.find(params[:cd_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
