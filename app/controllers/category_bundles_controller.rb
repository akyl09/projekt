class CategoryBundlesController < ApplicationController
  # GET /category_bundles
  # GET /category_bundles.json
  def index
    @category_bundles = CategoryBundle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @category_bundles }
    end
  end

  # GET /category_bundles/1
  # GET /category_bundles/1.json
  def show
    @category_bundle = CategoryBundle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category_bundle }
    end
  end

  # GET /category_bundles/new
  # GET /category_bundles/new.json
  def new
    @category_bundle = CategoryBundle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category_bundle }
    end
  end

  # GET /category_bundles/1/edit
  def edit
    @category_bundle = CategoryBundle.find(params[:id])
  end

  # POST /category_bundles
  # POST /category_bundles.json
  def create
    @category_bundle = CategoryBundle.new(params[:category_bundle])

    respond_to do |format|
      if @category_bundle.save
        format.html { redirect_to @category_bundle, notice: 'Category bundle was successfully created.' }
        format.json { render json: @category_bundle, status: :created, location: @category_bundle }
      else
        format.html { render action: "new" }
        format.json { render json: @category_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /category_bundles/1
  # PUT /category_bundles/1.json
  def update
    @category_bundle = CategoryBundle.find(params[:id])

    respond_to do |format|
      if @category_bundle.update_attributes(params[:category_bundle])
        format.html { redirect_to @category_bundle, notice: 'Category bundle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category_bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_bundles/1
  # DELETE /category_bundles/1.json
  def destroy
    @category_bundle = CategoryBundle.find(params[:id])
    @category_bundle.destroy

    respond_to do |format|
      format.html { redirect_to category_bundles_url }
      format.json { head :no_content }
    end
  end
end
