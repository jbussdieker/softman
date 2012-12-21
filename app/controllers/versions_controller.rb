class VersionsController < ApplicationController
  before_filter :authenticate_user!

  # POST /softwares/1/versions
  # POST /softwares/1/versions.json
  def create
    @software = Software.find(params[:software_id])
    @version = @software.versions.new(params[:version])

    respond_to do |format|
      if @version.save
        format.html { redirect_to @software, notice: 'Version was successfully created.' }
        format.json { render json: @version, status: :created, location: @version }
      else
        format.html { render action: "new" }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /softwares/1/versions/1
  # DELETE /softwares/1/versions/1.json
  def destroy
    @software = Software.find(params[:software_id])
    @version = @software.versions.find(params[:id])
    @version.destroy

    respond_to do |format|
      format.html { redirect_to software_path(@software) }
      format.json { head :no_content }
    end
  end
end
