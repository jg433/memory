# diese Klasse dient lediglich der Verwaltung der Einträge von Themen unter der URL: http://localhost:3000/group_entries
class GroupEntriesController < ApplicationController
  # GET /group_entries
  # GET /group_entries.xml
  def index
    @group_entries = GroupEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @group_entries }
    end
  end

  # GET /group_entries/1
  # GET /group_entries/1.xml
  def show
    @group_entry = GroupEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group_entry }
    end
  end

  # GET /group_entries/new
  # GET /group_entries/new.xml
  def new
    @group_entry = GroupEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group_entry }
    end
  end

  # GET /group_entries/1/edit
  def edit
    @group_entry = GroupEntry.find(params[:id])
  end

  # POST /group_entries
  # POST /group_entries.xml
  def create
    @group_entry = GroupEntry.new(params[:group_entry])

    respond_to do |format|
      if @group_entry.save
        format.html { redirect_to(@group_entry, :notice => 'Group entry was successfully created.') }
        format.xml  { render :xml => @group_entry, :status => :created, :location => @group_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /group_entries/1
  # PUT /group_entries/1.xml
  def update
    @group_entry = GroupEntry.find(params[:id])

    respond_to do |format|
      if @group_entry.update_attributes(params[:group_entry])
        format.html { redirect_to(@group_entry, :notice => 'Group entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /group_entries/1
  # DELETE /group_entries/1.xml
  def destroy
    @group_entry = GroupEntry.find(params[:id])
    @group_entry.destroy

    respond_to do |format|
      format.html { redirect_to(group_entries_url) }
      format.xml  { head :ok }
    end
  end
end
