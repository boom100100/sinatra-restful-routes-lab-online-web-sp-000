class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    erb :index
  end

  post '/recipes' do
    recipe = Recipe.new
    recipe.name = params[:name]
    recipe.ingredients = params[:ingredients]
    recipe.cook_time = params[:cook_time]
    recipe.save

    redirect to '/recipes/' + recipe.id.to_s
  end

<<<<<<< HEAD
  get '/recipes/new' do
    erb :new
  end

=======
>>>>>>> b910590ac5a957571513ce82917d34fe6e52c2d2
  get '/recipes/:id' do
    @recipe = Recipe.all.find(params[:id])
    erb :show
  end

<<<<<<< HEAD

=======
  get '/recipes/new' do
    erb :new
  end
>>>>>>> b910590ac5a957571513ce82917d34fe6e52c2d2

  get '/recipes/:id/edit' do
    @recipe = Recipe.all.find(params[:id])
    erb :edit
  end

  delete '/recipes/:id' do
    Recipe.destroy(params[:id])
    redirect to '/recipes'
  end

  patch '/recipes/:id' do
    @recipe = Recipe.all.find(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save

    redirect to '/recipes/' + params[:id].to_s
  end

end
