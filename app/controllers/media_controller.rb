class MediaController < ApplicationController
  before_action :authenticate_user!
  before_action :set_medium, only: [:show, :comment, :edit, :update, :destroy]

  layout 'application'

  # GET /media
  # GET /media.json
  def index
    @media = Medium.order(:id => :desc).all
  end

  # GET /media/1
  # GET /media/1.json
  def show
      @comment = Comment.new
      #UserMailer.say_hi(@medium).deliver
  end

  # GET /media/new
  def new
    @medium = Medium.new
  end

  # GET /media/1/edit
  def edit
  end

  # POST /comment
  def comment
      comment = @medium.comment.build(comment_params)
      comment.save
      redirect_to @medium
  end

  # POST /media
  # POST /media.json
  def create
    @medium = Medium.new(medium_params)

    respond_to do |format|
      if @medium.save

        #视频更新成功通知
        UserMailer.say_hi(@medium)

        format.html { redirect_to @medium, notice: 'Medium was successfully created.' }
        format.json { render :show, status: :created, location: @medium }
      else
        format.html { render :new }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media/1
  # PATCH/PUT /media/1.json
  def update
    respond_to do |format|
      if @medium.update(medium_params)
        format.html { redirect_to @medium, notice: 'Medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @medium }
      else
        format.html { render :edit }
        format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.json
  def destroy
    @medium.destroy
    respond_to do |format|
      format.html { redirect_to media_url, notice: 'Medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medium
      @medium = Medium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medium_params
      params.require(:medium).permit(:subject, :description, :image)
    end

    def comment_params
        params.require(:comment).permit(:comment)
    end
end
