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
    "Hello World!"
end

get '/hello/:name' do
    "Hello #{params[:name]}!"
end

get '/hello/:name/:city' do
    "Hello #{params[:name]} from #{params[:city]}!"
end

get '/more/*' do
    params[:splat]
end

get '/form' do
    # form.erbを表示する
    erb :form
end

post '/form' do
    "You said '#{params[:message]}'"
end

__END__
