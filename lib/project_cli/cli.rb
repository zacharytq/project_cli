class ProjectCli::Cli
  def call
    puts "Looking for a trail?"

    list_trails


  end

  def list_trails
    quit_trigger = true
    while quit_trigger
      puts "Would you like to search by region, county, difficulty? Or would you like to see all the trails?                  [region/county/difficulty/all/quit]"
      input = gets.strip

      case input
      when "region"
        puts "Please enter region: [options]"
        search_by_region(gets.strip)
      when "county"
        puts "Please enter county: [options]"
        search_by_county(gets.strip)
      when "difficulty"
        puts "Please enter difficulty: [options]"
        search_by_difficulty(gets.strip)
      when "all"
        ProjectCli::Trail.list_all_trails
      when "quit"
        quit_trigger = false
      else
        puts "Please enter a valid input."
      end
    end
  end

  def search_by_county(county)
    puts county
  end

  def search_by_region(region)
    region
  end

  def search_by_difficulty(difficulty)
    difficulty
  end

  def list_all_trails
    puts "all the trails"
  end

end
