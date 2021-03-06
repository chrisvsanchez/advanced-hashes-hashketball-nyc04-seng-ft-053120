require 'pry'
# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(name)
  #returns the points scored for that players. 
   game_hash.each do |home_away, team_color_player|
     team_color_player[:players].each do |player|
       if player[:player_name] == name
         return player[:points]
       end
     end
   end
  #  binding.pry
end

def shoe_size(name)
  game_hash.each do |home_away, team_color_player|
    team_color_player[:players].each do |player|
      if player[:player_name] == name
        return player[:shoe]
      end
    end
  end
end

def team_colors(team)
  #returns an array
  game_hash.each do |home_away, team_color_player|
    if team_color_player[:team_name] == team
      return team_color_player[:colors]
    end
  end
end

def team_names
  #returns an array of team names
  teams = []
  teams << game_hash[:home][:team_name]
  teams << game_hash[:away][:team_name]
  return teams
end

def player_numbers(team)
  numbers = []
  game_hash.each do |home_away, team_color_player|
    if game_hash[:home][:team_name] == team
      #  game_hash[:home][:players][:number].values
      numbers << game_hash[:home][:players][0][:number]
      numbers << game_hash[:home][:players][1][:number]
      numbers << game_hash[:home][:players][2][:number]
      numbers << game_hash[:home][:players][3][:number]
      numbers << game_hash[:home][:players][4][:number]
      # binding.pry
      return numbers
     end
     if game_hash[:away][:team_name] == team
       #  game_hash[:home][:players][:number].values
       numbers << game_hash[:away][:players][0][:number]
       numbers << game_hash[:away][:players][1][:number]
       numbers << game_hash[:away][:players][2][:number]
       numbers << game_hash[:away][:players][3][:number]
       numbers << game_hash[:away][:players][4][:number]
       return numbers
       # change index of num to while loop increment until reaching length
     end
   end
end

def player_stats(name)
  #return hash of player stats
  game_hash.each do |home_away, team_color_player|
    team_color_player[:players].each do |player|
      if player[:player_name] == name
        # binding.pry
        return player
      end
    end
  end
end
 
def big_shoe_rebounds
  # find player with biggest shoe size 
  result = 0
  player_rebound = nil
  game_hash.each do |home_away, team_color_player|
    team_color_player[:players].each do |player|
      if player[:shoe] > result 
        result = player[:shoe]
        player_rebound = player[:rebounds]
      end
      # binding.pry
    end
  end 
  return player_rebound
end

# def big_shoe_rebounds
#   result = 0
#   final_rebound = 0
#   # find player with biggest shoe size 
#   game_hash.each do |home_away, team_color_player|
      
#     team_color_player[:players].each do |player|
#       counter = 0
#       while counter < team_color_player[:players].count  
#       if  team_color_player[:players][counter][:shoe] > result
#          team_color_player[:players][counter][:shoe] = result
#         team_color_player[:players][counter][:rebounds] = final_rebound
#       end
#       counter += 1
#     end
#     end
#   end
#   return final_rebound
# end