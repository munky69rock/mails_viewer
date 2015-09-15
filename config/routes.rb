MailsViewer::Engine.routes.draw do
  controller "home" do
    get "/index", action: :index
    get "/raw", action: :raw
    get "/html", action: :html
    get "/plain", action: :plain
    get '/attachment', action: :attachment
  end
  root to: 'home#index'
end
