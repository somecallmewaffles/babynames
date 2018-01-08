class VotingBlocksController < ApplicationController
  before_action :set_voting_block, only: [:show, :edit, :update, :destroy]

  # GET /voting_blocks
  # GET /voting_blocks.json
  def index
    @voting_blocks = VotingBlock.all
  end

  # GET /voting_blocks/1
  # GET /voting_blocks/1.json
  def show
  end

  # GET /voting_blocks/new
  def new
    @voting_block = VotingBlock.new
  end

  # GET /voting_blocks/1/edit
  def edit
  end

  # POST /voting_blocks
  # POST /voting_blocks.json
  def create
    @voting_block = VotingBlock.new(voting_block_params)

    respond_to do |format|
      if @voting_block.save
        format.html { redirect_to @voting_block, notice: 'Voting block was successfully created.' }
        format.json { render :show, status: :created, location: @voting_block }
      else
        format.html { render :new }
        format.json { render json: @voting_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voting_blocks/1
  # PATCH/PUT /voting_blocks/1.json
  def update
    respond_to do |format|
      if @voting_block.update(voting_block_params)
        format.html { redirect_to @voting_block, notice: 'Voting block was successfully updated.' }
        format.json { render :show, status: :ok, location: @voting_block }
      else
        format.html { render :edit }
        format.json { render json: @voting_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voting_blocks/1
  # DELETE /voting_blocks/1.json
  def destroy
    @voting_block.destroy
    respond_to do |format|
      format.html { redirect_to voting_blocks_url, notice: 'Voting block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voting_block
      @voting_block = VotingBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voting_block_params
      params.require(:voting_block).permit(:random)
    end
end
