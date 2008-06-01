class InfosetsController < ApplicationController
  # GET /infosets
  # GET /infosets.xml
  def index
    @infosets = Infoset.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @infosets }
    end
  end

  # GET /infosets/1
  # GET /infosets/1.xml
  def show
    @infoset = Infoset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @infoset }
    end
  end

  # GET /infosets/new
  # GET /infosets/new.xml
  def new
    @infoset = Infoset.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @infoset }
    end
  end

  # GET /infosets/1/edit
  def edit
    @infoset = Infoset.find(params[:id])
  end

  # POST /infosets
  # POST /infosets.xml
  def create
    @infoset = Infoset.new(params[:infoset])

    respond_to do |format|
      if @infoset.save
        flash[:notice] = 'Infoset was successfully created.'
        format.html { redirect_to(@infoset) }
        format.xml  { render :xml => @infoset, :status => :created, :location => @infoset }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @infoset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /infosets/1
  # PUT /infosets/1.xml
  def update
    @infoset = Infoset.find(params[:id])

    respond_to do |format|
      if @infoset.update_attributes(params[:infoset])
        flash[:notice] = 'Infoset was successfully updated.'
        format.html { redirect_to(@infoset) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @infoset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /infosets/1
  # DELETE /infosets/1.xml
  def destroy
    @infoset = Infoset.find(params[:id])
    @infoset.destroy

    respond_to do |format|
      format.html { redirect_to(infosets_url) }
      format.xml  { head :ok }
    end
  end
end
