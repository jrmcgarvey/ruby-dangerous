require 'sinatra'
require './day'

get '/' do
   # thisday = Date::DAYNAMES[Time.now.wday]
  # "Hello, world! Happy #{day_of_week(Time.now)}."
  greeting(Time.now)
end