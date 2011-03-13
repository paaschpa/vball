class StatsController < ApplicationController
  
  def new_match
    @match = Match.find(params[:match_id])
  end

  def new_match_post
    stats_models = {}

    params.each do |k,v|
      if k.include?('stat_id') 
        stats_models[v] = get_stats_model(v.split('_')[0].to_i, v.split('_')[1].to_i)
      end
    end

    update_fields(params, stats_models)
    stats_models.each_value {|model| model.save}
  end

  # GET /stats
  # GET /stats.xml
  def index
    @stats = Stat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stats }
    end
  end

  # GET /stats/1
  # GET /stats/1.xml
  def show
    @stat = Stat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stat }
    end
  end

  # GET /stats/new
  # GET /stats/new.xml
  def new
    @stat = Stat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stat }
    end
  end

  # GET /stats/1/edit
  def edit
    @stat = Stat.find(params[:id])
  end

  # POST /stats
  # POST /stats.xml
  def create
    @stat = Stat.new(params[:stat])

    respond_to do |format|
      if @stat.save
        format.html { redirect_to(@stat, :notice => 'Stat was successfully created.') }
        format.xml  { render :xml => @stat, :status => :created, :location => @stat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stats/1
  # PUT /stats/1.xml
  def update
    @stat = Stat.find(params[:id])

    respond_to do |format|
      if @stat.update_attributes(params[:stat])
        format.html { redirect_to(@stat, :notice => 'Stat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stats/1
  # DELETE /stats/1.xml
  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy

    respond_to do |format|
      format.html { redirect_to(stats_url) }
      format.xml  { head :ok }
    end
  end

  private 
  
  def get_stats_model(player_id, match_id)
    return Stat.where(:player_id => player_id, :match_id => match_id).first ||
      Stat.new({:player_id => player_id, :match_id => match_id})
  end

  def update_fields(update_hash, model_hash)
    field_values = update_hash.reject {|k,v| k.include?('stat_id') or not k.include?('__')}
    field_values.each do |k,v|
        ids = k[/(?<=__)(.*?)(?=__)/]
        model_hash[ids][k[0..k.index("__")-1]] = v
    end
  end

end
