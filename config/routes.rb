Rails.application.routes.draw do
  get '/fortune_url' => 'pages#fortune_action'
  get '/lottery_url' => 'pages#lottery_action'
  get '/page_visit_url' => 'pages#page_visit_action'
  get '/bottle_song_url' => 'pages#bottle_song_action'
end
