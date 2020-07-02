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
      players:[
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
def helper
  array = []
  array.push(game_hash[:home][:players])
  array.push(game_hash[:away][:players])
  array
end

def team_helper
  new_array = []
  new_array.push(game_hash[:home][:colors])
  new_array.push(game_hash[:away][:colors])
  pp new_array
end

def num_points_scored(player_name)
  points = 0
  helper.each do |i|
    i.each do |hash|
      hash.each do |key, value|
        if player_name == value
          points = hash[:points]
        end
      end
    end
  end
  points
end

def shoe_size(player_name)
  shoe = 0
  helper.each do |i|
    i.each do |hash|
      hash.each do |key, value|
        if player_name == value
          shoe = hash[:shoe]
        end
      end
    end
  end
  shoe
end

def team_colors(team_name)
  colors = ""
  if team_name == "Brooklyn Nets"
    colors = team_helper[0]
  end
  if team_name == "Charlotte Hornets"
    colors = team_helper[1]
  end
  colors
end

def team_names
  team_array = []
  team_array.push(game_hash[:home][:team_name])
  team_array.push(game_hash[:away][:team_name])
  team_array
end

def player_numbers(team_name)
  numbers_array = []
  if team_name == "Brooklyn Nets"
    game_hash[:home][:players].each do |hash|
      hash.each do |key, value|
        numbers_array.push(hash[:number])
      end
    end
  end
  if team_name == "Charlotte Hornets"
    game_hash[:away][:players].each do |hash|
      hash.each do |key, value|
        numbers_array.push(hash[:number])
      end
    end
  end
  numbers_array = numbers_array.uniq
  numbers_array
end

def player_stats(player_name)
    new_hash = {}
    helper.each do |i|
    i.each do |hash|
      hash.each do |key, value|
        if player_name == value
          new_hash = hash
        end
      end
    end
  end
  new_hash
end

def big_shoe_rebounds
  rebounds = 0
  helper.each do |i|
    i.each do |hash|
      hash.each do |key, value|
        if hash[:shoe] > 18
          rebounds = hash[:rebounds]
        end
      end
    end
  end
  rebounds
end



