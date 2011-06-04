class GraphentabellesController < ApplicationController
  # GET /graphentabelles
  # GET /graphentabelles.xml
  def index
    @graphentabelles = Graphentabelle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @graphentabelles }
    end
  end

  # GET /graphentabelles/1
  # GET /graphentabelles/1.xml
  def show
    @graphentabelle = Graphentabelle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @graphentabelle }
    end
  end

  # GET /graphentabelles/new
  # GET /graphentabelles/new.xml
  def new
    @graphentabelle = Graphentabelle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @graphentabelle }
    end
  end

  # GET /graphentabelles/1/edit
  def edit
    @graphentabelle = Graphentabelle.find(params[:id])
  end

  # POST /graphentabelles
  # POST /graphentabelles.xml
  def create
    @graphentabelle = Graphentabelle.new(params[:graphentabelle])

    respond_to do |format|
      if @graphentabelle.save
        format.html { redirect_to(@graphentabelle, :notice => 'Graphentabelle was successfully created.') }
        format.xml  { render :xml => @graphentabelle, :status => :created, :location => @graphentabelle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @graphentabelle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /graphentabelles/1
  # PUT /graphentabelles/1.xml
  def update
    @graphentabelle = Graphentabelle.find(params[:id])

    respond_to do |format|
      if @graphentabelle.update_attributes(params[:graphentabelle])
        format.html { redirect_to(@graphentabelle, :notice => 'Graphentabelle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @graphentabelle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /graphentabelles/1
  # DELETE /graphentabelles/1.xml
  def destroy
    @graphentabelle = Graphentabelle.find(params[:id])
    @graphentabelle.destroy

    respond_to do |format|
      format.html { redirect_to(graphentabelles_url) }
      format.xml  { head :ok }
    end
  end
end
