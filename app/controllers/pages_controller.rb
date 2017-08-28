class PagesController < ApplicationController
  def fortune_action
    fortune = [
              "You will get free lunch", 
              "You will find $100", 
              "You will win a new car", 
              "You will be gifted a free vacation"
            ]
    @title = "Fortune Teller"
    @fortune_result = fortune[rand(0...fortune.count)]
    render 'fortune_page.html.erb'
  end

  def lottery_action
    winning_numbers_array = []
    6.times do
      winning_numbers_array << rand(1..60)
    end
    # @winning_numbers = winning_numbers_array.join(", ")
    @winning_numbers = winning_numbers_array
    @title = "Lottery Numbers"
    render 'lottery_page.html.erb'
  end

  def page_visit_action
    @user_count = 1
    @user_count =+ 1
    render 'page_visit_page.html.erb'
  end

  def bottle_song_action
    @bottles = 99
    @bottles_next = @bottles - 1
    @title = "Bottles of Beer"
    render 'bottle_count_page.html.erb'
  end

end
