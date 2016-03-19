# Q0: Why is this error being thrown?

We have not generated the Pokemon model, so there is no model for the controller to use.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The pokemon model was populated in seeds.rb with pokemon. These are wild pokemon, meaning that they do not belong to a trainer. It is randomly grabbing pokemon who have trainer_id IS null

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It creates a button that, when clicked, sends a PATCH request on the "capture_path" to "pokemons#capture" in the pokemons controller. It sets the id of the pokemon as a parameter for the pokemon controller to use.

# Question 3: What would you name your own Pokemon?
Hannah Montana

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed in the trainer_path with the current_trainer's id and a 'get' method. The path needed a method, but if it weren't a path, we would have to pass in the controller and a 'show' action.


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Since “application.html.erb” is the parent layout for the whole app, it renders on every view. In “application.html.erb”, it renders the view “layouts/_messages.html.erb". This view displays any error messages in “flash” - a temporary variable for each request, similar to “params”.

# Give us feedback on the project and decal below!

More live coding. A lot of the material is easy, but live coding is very nuanced and I think more examples are necesary. 

