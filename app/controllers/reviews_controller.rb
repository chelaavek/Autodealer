class ReviewsController < InheritedResources::Base
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end


  def new
    @review = Review.new
  end


  def edit
  end


  def create
    @review = Review.new(review_params)
    @review.admin_user_id = current_admin_user.id
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @review=Review.find_by_id(params[:id])
    respond_to do |format|
      if @review.update(review_params_for_update)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @review=Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def review_params
      params.require(:review).permit(:admin_user_id, :title, :reviews_body, :id)
    end

  def review_params_for_update
    params.permit(:admin_user_id, :title, :reviews_body, :id)
  end

end
