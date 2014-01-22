class CreaturesController < ApplicationController
  def all_creatures
  	@creatures = Creature.all 
  end

  def index
  	all_creatures 
	render :index
  end

  def new
  	render :new
  end

  def view_all
  	@creatures = Creature.all 
  	render :view_all
  end

  def show
  	id = params[:id]
  	@creature = Creature.find(id)

  	render :show
  end

  def create
  	creature = params.require(:creature).permit(:name, :description)
  	new_creature = Creature.create(creature)
  	redirect_to "/creatures/#{new_creature.id}"

  end

  def edit
  	id = params[:id]
  	@creature = Creature.find(id)

  	render :edit
  end

  def update
  	id = params[:id]
	creature = Creature.find(id)

	updated_info = params.require(:creature).permit(:name, :description)
	creature.update_attributes(updated_info)
	redirect_to "/creatures/#{creature.id}"

  end

  def delete
  	id = params[:id]
	creature = Creature.find(id)
	# creature_to_destroy = params.require(:creature).permit(:name, :description)
	creature.destroy
	all_creatures 
	render :index
  end


end
