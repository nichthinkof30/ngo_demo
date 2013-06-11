class OrganizationFilesController < ApplicationController
  # GET /organization_files
  # GET /organization_files.json
  def index
    @organization_files = OrganizationFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organization_files }
    end
  end

  # GET /organization_files/1
  # GET /organization_files/1.json
  def show
    @organization_file = OrganizationFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organization_file }
    end
  end

  # GET /organization_files/new
  # GET /organization_files/new.json
  def new
    @organization_file = OrganizationFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organization_file }
    end
  end

  # GET /organization_files/1/edit
  def edit
    @organization_file = OrganizationFile.find(params[:id])
  end

  # POST /organization_files
  # POST /organization_files.json
  def create
    @organization_file = OrganizationFile.new(params[:organization_file])

    respond_to do |format|
      if @organization_file.save
        format.html { redirect_to @organization_file, notice: 'Organization file was successfully created.' }
        format.json { render json: @organization_file, status: :created, location: @organization_file }
      else
        format.html { render action: "new" }
        format.json { render json: @organization_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organization_files/1
  # PUT /organization_files/1.json
  def update
    @organization_file = OrganizationFile.find(params[:id])

    respond_to do |format|
      if @organization_file.update_attributes(params[:organization_file])
        format.html { redirect_to @organization_file, notice: 'Organization file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organization_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_files/1
  # DELETE /organization_files/1.json
  def destroy
    @organization_file = OrganizationFile.find(params[:id])
    @organization_file.destroy

    respond_to do |format|
      format.html { redirect_to organization_files_url }
      format.json { head :no_content }
    end
  end
end
