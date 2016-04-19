require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :worry_form
  end

  post '/meow' do 
    @facts = ["A male cat’s penis is barbed to scrape out rival semen and this is excruciatingly painful for female cats during sex.", "The taste buds of cats cannot detect sweets.","Outdoor cats kill approximately 2.5 billion birds a year.", "Cats have contributed to the extinction of 33 species.", "Every year approximately 1.5 million cats are euthanized.", "Mother cats sometimes eat their kittens if they are unhealthy or have died.", "Cats can carry a parasite called Toxoplasma gondii in their feces that can cause severe brain damage in fetuses.", "A woman cooked her pet kitten in a microwave as a punishment for eating her goldfish.", "Cat bites have been linked to depression.", "Cats were thought to be associated with witches and were killed en masse in the Middle Ages."]
    @user_problem = params[:user_problem]
    @cat_fact = @facts.sample
    erb :perspective
  end 


end