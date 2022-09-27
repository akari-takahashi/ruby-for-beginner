# シナトラでサーバーサイドプログラミングの初歩を学ぶ
# シナトラのインストール
# $ gem install sinatra

# シナトラの実行
# $ ruby sinatra_ruby_beginner.rb

# シナトラの実行（デーモン化）
# $ ruby sinatra_ruby_beginner.rb -o

# シナトラの実行（デバッグモード）
# $ ruby sinatra_ruby_beginner.rb -d

# シナトラの実行（デバッグモード、デーモン化）
# $ ruby sinatra_ruby_beginner.rb -d -o

require 'sinatra'

get '/' do
    @title = 'Hello, Sinatra!'
    @message = "Hello World!"
    erb :message
end

get '/hello/:name' do
    @title = 'Hello, Sinatra!'
    @message = "Hello #{params[:name]}!"
    erb :message
end

get '/hello/:name/:city' do
    @title = 'Hello, Sinatra!'
    @message = "Hello #{params[:name]} from #{params[:city]}!"
    erb :message
end

get '/more/*' do
    @title = 'Hello, Sinatra!'
    @message = "Hello #{params[:splat]}!"
    erb :message
end

get '/form' do
    @title = "Form"
    erb :form
end

post '/form' do
    @title = "Form"
    @message = "You said '#{params[:message]}'"
    erb :message
end

__END__
