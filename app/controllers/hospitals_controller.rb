class HospitalsController < ApplicationController
  # GET /hospitals
  # GET /hospitals.xml
  def index
    @hospitals = Hospital.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hospitals }
    end
  end

  # GET /hospitals/1
  # GET /hospitals/1.xml
  def show
    @hospital = Hospital.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hospital }
    end
  end

  # GET /hospitals/new
  # GET /hospitals/new.xml
  def new
    @hospital = Hospital.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hospital }
    end
  end

  # GET /hospitals/1/edit
  def edit
    @hospital = Hospital.find(params[:id])
  end

  # POST /hospitals
  # POST /hospitals.xml
  def create
    @hospital = Hospital.new(params[:hospital])

    respond_to do |format|
      if @hospital.save
        flash[:notice] = 'Hospital was successfully created.'
        format.html { redirect_to(@hospital) }
        format.xml  { render :xml => @hospital, :status => :created, :location => @hospital }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hospital.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hospitals/1
  # PUT /hospitals/1.xml
  def update
    @hospital = Hospital.find(params[:id])

    respond_to do |format|
      if @hospital.update_attributes(params[:hospital])
        flash[:notice] = 'Hospital was successfully updated.'
        format.html { redirect_to(@hospital) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hospital.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hospitals/1
  # DELETE /hospitals/1.xml
  def destroy
    @hospital = Hospital.find(params[:id])
    @hospital.destroy

    respond_to do |format|
      format.html { redirect_to(hospitals_url) }
      format.xml  { head :ok }
    end
  end
end
