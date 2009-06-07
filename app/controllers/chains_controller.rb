class ChainsController < ApplicationController
  # GET /chains
  # GET /chains.xml
  def index
    @chains = Chain.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @chains }
    end
  end

  # GET /chains/1
  # GET /chains/1.xml
  def show
    @chain = Chain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @chain }
    end
  end

  # GET /chains/new
  # GET /chains/new.xml
  def new
    @chain = Chain.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @chain }
    end
  end

  # GET /chains/1/edit
  def edit
    @chain = Chain.find(params[:id])
  end

  # POST /chains
  # POST /chains.xml
  def create
    @chain = Chain.new(params[:chain])

    respond_to do |format|
      if @chain.save
        flash[:notice] = 'Chain was successfully created.'
        format.html { redirect_to(@chain) }
        format.xml  { render :xml => @chain, :status => :created, :location => @chain }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @chain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /chains/1
  # PUT /chains/1.xml
  def update
    @chain = Chain.find(params[:id])

    respond_to do |format|
      if @chain.update_attributes(params[:chain])
        flash[:notice] = 'Chain was successfully updated.'
        format.html { redirect_to(@chain) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @chain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /chains/1
  # DELETE /chains/1.xml
  def destroy
    @chain = Chain.find(params[:id])
    @chain.destroy

    respond_to do |format|
      format.html { redirect_to(chains_url) }
      format.xml  { head :ok }
    end
  end
end
