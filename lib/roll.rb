class Roll
  def initialize player
    @player=player
  end
  def roller
    new_array=[]
    until new_array.length == 5
      random=rand(1..6)
      new_array<<random
    end
    p new_array
    new_array.sort!
    new_array1=[]
    new_array.each do |n2|
      new_array1<<new_array.count(n2)
      if n2+1==new_array[1] && n2+1==new_array[2] && n2+1==new_array[3] && n2+1==new_array[4] && n2+1==new_array[5]
        puts  "Street!!! == 30 points"
        @player.add_points(30)
        puts  "Total points #{@player.points}"
      end
    end
    if new_array1.include?(3)==true && new_array1.include?(2)==true
      puts "Full house!!! == 20 points"
      @player.add_points(20)
      puts  "Total points #{@player.points}"
    elsif new_array1.include?(3)==true
      puts "Three!!! == 10 points"
      @player.add_points(10)
      puts  "Total points #{@player.points}"
    elsif new_array1.include?(4)==true
      puts "Kare!!! == 40 points"
      @player.add_points(40)
      puts  "Total points #{@player.points}"
    end
  end
end
