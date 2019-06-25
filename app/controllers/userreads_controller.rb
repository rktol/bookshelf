class UserreadsController < ApplicationController
  before_action :set_userread, only: [:show, :edit, :update, :destroy]

  # GET /userreads
  # GET /userreads.json
  def index
    @userreads = Userread.all
    @users=User.all
    @comics=Comic.all
  end

  # GET /userreads/1
  # GET /userreads/1.json
  def show
    @users=User.all
    @comics=Comic.all
  end

  # GET /userreads/new
  def new
    @userread = Userread.new
    @users=User.all
    @comics=Comic.all
  end

  # GET /userreads/1/edit
  def edit
    @users=User.all
    @comics=Comic.all
  end

  # POST /userreads
  # POST /userreads.json
  def create
    @userread = Userread.new(userread_params)

    respond_to do |format|
      if @userread.save
        format.html { redirect_to @userread, notice: 'Userread was successfully created.' }
        format.json { render :show, status: :created, location: @userread }
      else
        format.html { render :new }
        format.json { render json: @userread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userreads/1
  # PATCH/PUT /userreads/1.json
  def update
    respond_to do |format|
      if @userread.update(userread_params)
        format.html { redirect_to @userread, notice: 'Userread was successfully updated.' }
        format.json { render :show, status: :ok, location: @userread }
      else
        format.html { render :edit }
        format.json { render json: @userread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userreads/1
  # DELETE /userreads/1.json
  def destroy
    @userread.destroy
    respond_to do |format|
      format.html { redirect_to userreads_url, notice: 'Userread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userread
      @userread = Userread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userread_params
      params.require(:userread).permit(:comic_id, :user_id, :vol)
    end
end
