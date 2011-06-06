class RegimentsController < ApplicationController

#  autosuggest :regiment, :name

  # GET /regiments
  # GET /regiments.xml
  def index
    @regiments = Regiment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regiments }
    end
  end

  # GET /regiments/1
  # GET /regiments/1.xml
  def show
    @regiment = Regiment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regiment }
    end
  end

  # GET /regiments/new
  # GET /regiments/new.xml
  def new
    @regiment = Regiment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regiment }
    end
  end

  # GET /regiments/1/edit
  def edit
    @regiment = Regiment.find(params[:id])
  end

  # POST /regiments
  # POST /regiments.xml
  def create
    @regiment = Regiment.new(params[:regiment])

    respond_to do |format|
      if @regiment.save
        format.html { redirect_to(@regiment, :notice => 'Regiment was successfully created.') }
        format.xml  { render :xml => @regiment, :status => :created, :location => @regiment }
        format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regiment.errors, :status => :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /regiments/1
  # PUT /regiments/1.xml
  def update
    @regiment = Regiment.find(params[:id])

    respond_to do |format|
      if @regiment.update_attributes(params[:regiment])
        format.html { redirect_to(@regiment, :notice => 'Regiment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regiment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regiments/1
  # DELETE /regiments/1.xml
  def destroy
    @regiment = Regiment.find(params[:id])
    @regiment.destroy

    respond_to do |format|
      format.html { redirect_to(regiments_url) }
      format.xml  { head :ok }
      format.js   { render :nothing => true }		# Fading out deleted regiment instead of reloading page
    end
  end
end
