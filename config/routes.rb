Rails.application.routes.draw do
  scope :users do
    post '/transfer', to: 'users#transfer'
  end
end