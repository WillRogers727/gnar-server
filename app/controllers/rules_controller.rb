class RulesController < ApplicationController
	
	# GET /clubs
	# GET /clubs.json
	def index
	  @club = Club.find(params[:club_id])
	  @rules = @club.rules
	end

	def create
	  @club = Club.find(params[:club_id])
	  @rule = @club.rules.create(rule_params)
	  redirect_to club_path(@club)
	end

	def destroy
	  @club = Club.find(params[:club_id])
	  @rule = @club.rules.find(params[:id])
	  @rule.destroy
	  redirect_to club_path(@club)
	end

	private

	  def rule_params
	    params.require(:rule).permit(:title, :description, :points)
	  end
end
