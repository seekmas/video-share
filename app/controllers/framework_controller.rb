class FrameworkController < ApplicationController
  #layout 'framework7' , :only => [:index , :about]

  def index
    @status = Status.new

    @collections = User.order(:id => :desc).all

    @media = Medium.order(:id => :desc).all

  end

  def about

  end

end