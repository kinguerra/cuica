class CinemasController < ApplicationController
  before_filter :authorize, only: [:create, :edit, :update, :destroy]

  def index
    @cinemas = Cinema.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cinemas }
    end
  end

  def show
    @cinema = Cinema.find(params[:id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cinema }
    end
  end

  def new
    @cinema = Cinema.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cinema }
    end
  end
  
  def create
    @cinema = Cinema.new(params[:cinema])

    respond_to do |format|
      if @cinema.update_attributes(params[:cinema])
        format.html { redirect_to @cinema, notice: 'Cinema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @cinema = Cinema.find(params[:id])
  end

  
  def update
    @cinema = Cinema.find(params[:id])

    respond_to do |format|
      if @cinema.update_attributes(params[:cinema])
        format.html { redirect_to @cinema, notice: 'Cinema was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cinema = Cinema.find(params[:id])
    @cinema.destroy

    respond_to do |format|
      format.html { redirect_to cinemas_url }
      format.json { head :no_content }
    end
  end
end