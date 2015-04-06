class AnnualsController < ApplicationController

# GET /profiles/1/annuals
  def index
    # For URL like /profiles/1/annuals
    # Get the profile with id=1
    @profile = Profile.find(params[:profile_id])

    # Access all annuals for that profile
    @annuals = @profile.annuals
  end

  # GET /profiles/1/annuals/2
  def show
    @profile = Profile.find(params[:profile_id])

    # For URL like /profiles/1/annuals/2
    # Find an annual in profiles 1 that has id=2
    @annual = @profile.annuals.find(params[:id])
  end

  # GET /profiles/1/annuals/new
  def new
    @profile = Profile.find(params[:profile_id])


    # Associate an annual object with profile 1
    @annual = @profile.annuals.build
  end

  # POST /profiles/1/annuals
  def create
    @profile = Profile.find(params[:profile_id])

    # For URL like /profiles/1/annuals
    # Populate an annual associate with profile 1 with form data
    # profile will be associated with the annual
    @annual = @profile.annuals.build(params.require(:annual).permit(:description, :date))
    if @annual.save
      # Save the annual successfully
      redirect_to profile_annual_url(@profile, @annual)
    else
      render :action => "new"
    end
  end

  # GET /profiles/1/annuals/2/edit
  def edit
    @profile = Profile.find(params[:profile_id])

    # For URL like /profiles/1/annuals/2/edit
    # Get annual id=2 for profile 1
    @annual = @profile.annuals.find(params[:id])
  end

  # PUT /profiles/1/annuals/2
  def update
    @profile = Profile.find(params[:profile_id])
    @annual = Annual.find(params[:id])
    if @annual.update_attributes(params.require(:annual).permit(:description, :date))
      # Save the annual successfully
      redirect_to profile_annual_url(@profile, @annual)
    else
      render :action => "edit"
    end
  end

  # DELETE /profiles/1/annuals/2
  def destroy
    @profile = Profile.find(params[:profile_id])
    @annual = Annual.find(params[:id])
    @annual.destroy

    respond_to do |format|
      format.html { redirect_to profile_annuals_path(@profile) }
      format.xml  { head :ok }
    end
  end

end