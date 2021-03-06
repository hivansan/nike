class CommercialsController < ApplicationController
#  before_filter :signed_in_user
  
  # GET /commercials
  # GET /commercials.json
  def index
    @commercials = Commercial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: {commercials: @commercials } }
    end
  end

  # GET /commercials/1
  # GET /commercials/1.json
  def show
    @commercial = Commercial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commercial }
    end
  end

  # GET /commercials/new
  # GET /commercials/new.json
  def new
    @commercial = Commercial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commercial }
    end
  end

  # GET /commercials/1/edit
  def edit
    @commercial = Commercial.find(params[:id])
  end

  # POST /commercials
  # POST /commercials.json
  def create
    @commercial = Commercial.new(params[:commercial])

    respond_to do |format|
      if @commercial.save
        format.html { redirect_to @commercial, notice: 'Commercial was successfully created.' }
        format.json { render json: @commercial, status: :created, location: @commercial }
      else
        format.html { render action: "new" }
        format.json { render json: @commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commercials/1
  # PUT /commercials/1.json
  def update
    @commercial = Commercial.find(params[:id])

    respond_to do |format|
      if @commercial.update_attributes(params[:commercial])
        format.html { redirect_to @commercial, notice: 'Commercial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercials/1
  # DELETE /commercials/1.json
  def destroy
    @commercial = Commercial.find(params[:id])
    @commercial.destroy

    respond_to do |format|
      format.html { redirect_to commercials_url }
      format.json { head :no_content }
    end
  end
end
