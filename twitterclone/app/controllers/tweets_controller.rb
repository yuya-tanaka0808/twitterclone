class TweetsController < ApplicationController
  before_action :find_tweet, only:[:show, :edit, :update, :destroy]
  def index
    @tweet = Tweet.all
  end
  def show
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
    redirect_to new_tweet_path, notice: "投稿しました！"
    else
      render :new
    end
  end
  def edit
  end
  def update

  end
  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "削除しました！"
  end
  def confirm
   @tweet = Tweet.new(tweet_params)
   render :new if @tweet.invalid?
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content)
  end
  def find_tweet
    @tweet = Tweet.find(params[:id])
  end

end
