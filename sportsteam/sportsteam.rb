class Sportsteam

  attr_accessor :team, :players, :coach
def initialize(team, players, coach)
  @team = team
  @players = players
  @coach = coach
  @points = 0

end

# def get_team_name
#   return @team
# end
#
# def get_players
#   return @players
# end
#
# def get_coach
#   return @coach
# end
#
# def set_coach(new_coach)
#   @coach = new_coach
# end

def add_player(name)
  @players << name
end

def find_player(name)
  for person in @players
    if person == name
      return person
    end
  end
end

def win_or_lose(score)
  if score == "win"
    @points += 1
  elsif score == "lose"
    return @points
  end
end


end
