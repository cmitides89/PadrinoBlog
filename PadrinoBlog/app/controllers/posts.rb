PadrinoBlog::App.controllers :posts do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  get :index, :map => '/' do
    @posts = Post.all 
    render 'posts/index'
  end

  get :show, :map => '/posts/:author_name/:id' do
    @author_name = Author_name.find(params[:id])
    render '/posts/show'
  end

  get :author, :map => '/posts/:author_name' do

  end
end
