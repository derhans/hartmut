class DepartmentsController < ApplicationController
  # GET /departments
  # GET /departments.xml
  def index
    @departments = Department.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @departments }
    end
  end

  # GET /departments/1
  # GET /departments/1.xml
  def show
    @department = Department.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @department }
    end
  end

  # GET /departments/new
  # GET /departments/new.xml
  def new
    @department = Department.new

    @hospitals = Hospital.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @department }
    end
  end

  # GET /departments/1/edit
  def edit
    @department = Department.find(params[:id])
    @hospitals = Hospital.find(:all)
    @assigned_articles = @department.articles
    @articles = Article.find(:all)
  end

  # POST /departments
  # POST /departments.xml
  def create
    @department = Department.new(params[:department])

    respond_to do |format|
      if @department.save
        flash[:notice] = 'Department was successfully created.'
        format.html { redirect_to(@department) }
        format.xml  { render :xml => @department, :status => :created, :location => @department }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @department.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /departments/1
  # PUT /departments/1.xml
  def update
    @department = Department.find(params[:id])

    respond_to do |format|
      if @department.update_attributes(params[:department])
        flash[:notice] = 'Department was successfully updated.'
        format.html { redirect_to(@department) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @department.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /departments/1
  # DELETE /departments/1.xml
  def destroy
    @department = Department.find(params[:id])
    @department.destroy

    respond_to do |format|
      format.html { redirect_to(departments_url) }
      format.xml  { head :ok }
    end
  end

  def add_to_assignment
    #@article = params[:article]
    #@department = params[:department]
    @department = Department.find_by_id(params[:department])
    article = Article.find(params[:article])
    #article = Article.new
    @department.articles << article
    redirect_to :action => "edit", :id => @department
  end

  def remove_from_assignment
    department = Department.find(params[:department])
    article = Article.find(params[:article])
    department.articles.delete(article)
    redirect_to :action => "edit", :id => department
  end
  private
  def find_assignment
    session[:assignment] ||= Assignment.new
  end
end
