def weather_forecast(stoneAppearance)
  if stoneAppearance == "wet"
    puts "It's raining!"
  elsif stoneAppearance == "dry"
    puts "It's not raining!"
  elsif stoneAppearance == "shadow"
    puts "It's sunny!"
  elsif stoneAppearance == "white"
    puts "It's snowing!"
  elsif stoneAppearance == "hard to see"
    puts "It's foggy!"
  elsif stoneAppearance == "swinging"
    puts "It's windy!"
  elsif stoneAppearance == "shaking"
    puts "Oh no! An Earthquake!"
  elsif stoneAppearance == "gone"
    puts "Oh dear! We've had a tornado! I'll get you my pretty!"
  else
    puts "please use 'wet', 'dry' as an argument"
  end
end

weather_forecast("wet")