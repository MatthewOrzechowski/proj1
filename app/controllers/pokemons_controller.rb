class PokemonsController < ApplicationController	
	
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attribute(:trainer_id, current_trainer.id)
		@pokemon.save
		redirect_to '/'
	end

	def damage
		@pokemon = Pokemon.find(params[:id]) 
		@pokemon.health -= 10
		if @pokemon.health <= 0
      			@pokemon.delete
    		else
		 	@pokemon.save
		end
		redirect_to trainer_path(current_trainer.id)
	 end

 	def new
    		@pokemon = Pokemon.new
	 end


  	def create
	    	@pokemon = Pokemon.new(pokemon_params)
	    	@pokemon.health = 100
	  	@pokemon.level = 1
	  	@pokemon.trainer_id = current_trainer.id
	    if @pokemon.save
	      redirect_to current_trainer
	    else
	      redirect_to pokemon_new_path, :error => flash[:error] = @pokemon.errors.full_messages.to_sentence
	    end
	  end
	
	  private
	  def pokemon_params
	    params.require(:pokemon).permit(:name)
	  end

end
