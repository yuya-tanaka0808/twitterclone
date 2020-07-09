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
    Tweet.create(blog_params)
    if @blog.save
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
   @tweet = Tweet.new(blog_params)
   render :new if @tweet.inbalid?
  end

  private
  def blog_params
    params.require(:tweet).permit(:content)
  end


end
