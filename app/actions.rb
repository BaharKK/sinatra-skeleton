  # Homepage (Root path)
get '/' do
  erb :index
end
  get '/messages' do 
    @messages = Message.all
    erb :'messages/index'
  end

  get '/messages/new' do 
    erb :'messages/new'
  end
  # binding.pry
  get '/messages/:id' do
    @message = Message.find params[:id]
    erb :"messages/show"
  end

  get '/messages/show_others/:author' do 
    @messages = Message.where(author: params[:author])
    erb :"messages/show_others"
  end

  post '/messages' do 
    @message = Message.new(
        content: params[:content],
        author: params[:author],
        url: params[:url]
    )
    if @message.save
       redirect '/messages'
    else
      erb :'messages/new'
    end
  end