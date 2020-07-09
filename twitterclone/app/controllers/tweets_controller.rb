class TweetsController < ApplicationController
  def index
    @tweet = Tweet.all
  end
  def show
  end
  def new
    @tweet = Tweet.new
  end
  def create
    Tweet.create(tweet_params)
    if @tweet.save
    redirect_to new_tweet_path, notice: "編集しました！"
    else
      render :edit
    end
  end
  def edit

  end
  def update

  end
  def destroy

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
