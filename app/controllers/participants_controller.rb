class ParticipantsController < ApplicationController
#require 'clickatell'

#  before_filter :signed_in_user
  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @participants }
    end
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    @participant = Participant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/new
  # GET /participants/new.json
  def new
    @participant = Participant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @participant }
    end
  end

  # GET /participants/1/edit
  def edit
    @participant = Participant.find(params[:id])
  end

  def receive_android
    if params
      participant = Participant.new
      name = params[:name]
      celphone = params[:celphone]
      email = params[:email]
      
      participant.name = name
      participant.celphone = celphone
      participant.email = email
      
      participant.save
    end
  end
  
  def send_sms
    participants = Participant.all

    api = Clickatell::API.authenticate('3384575', 'raulms', 'fKj0LPo5')

    participants.each do |participant|
#      api.send_message('52'+participant.celphone, params[:sms][:message])
    end
    
    if params
      flash[:success] = "Su mensaje ha sido enviado satisfactoriamente: " + params[:sms][:message]
    end
    
    redirect_to participants_url
    
  end
  
  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(params[:participant])

    respond_to do |format|
      if @participant.save
        format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
        format.json { render json: @participant, status: :created, location: @participant }
      else
        format.html { render action: "new" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /participants/1
  # PUT /participants/1.json
  def update
    @participant = Participant.find(params[:id])

    respond_to do |format|
      if @participant.update_attributes(params[:participant])
        format.html { redirect_to @participant, notice: 'Participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy

    respond_to do |format|
      format.html { redirect_to participants_url }
      format.json { head :no_content }
    end
  end
end
