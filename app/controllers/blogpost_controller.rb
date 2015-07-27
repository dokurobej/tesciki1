class BlogpostController < ApplicationController

  def index
  end

  def new

    @blogpost = Blogpost.new

  end

  def create

    @blogpost = Blogpost.new(blogpost_params)

    if @blogpost.save
      redirect_to root_path, notice: "Post dodany!"
    else
      render 'new'
    end

  end

  def show

    @blogpost = Blogpost.all

  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def blogpost_params

    params.require(:blogpost).permit(:tytul, :tresc)

  end
  

end
