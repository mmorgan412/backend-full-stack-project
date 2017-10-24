class TrailsController < ProtectedController
  before_action :set_trail, only: [:update, :destroy, :show]

  def index
  @trails = current_user.trails.all
  if params[:rating]
    @trails = current_user.trails.search(params[:rating])
    render json: @trails
  else
    @trails = current_user.trails.all

    render json: @trails
  end
  end

  # GET /trails/1
  def show
    @trail = Trail.find(params[:id])

    render json: @trail
  end

  # POST /trails
  def create
    @trail = current_user.trails.build(trail_params)

    if @trail.save
      render json: @trail, status: :created, location: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trails/1
  def update
    if @trail.update(trail_params)
      render json: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trails/1
  def destroy
    @trail.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail
      @trail = Trail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trail_params
      params.require(:trail).permit(:trail_name, :mountain_name, :difficulty, :rating)
    end
end
