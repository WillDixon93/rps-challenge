class Game

  attr_reader :player_wins, :p_weapon, :pc_weapon

  def initialize(player_weapon)
    @player_weapon = player_weapon
    @pc_weapon = pc_weapon_selector
    @player_wins = false
  end

  def draw?
    @player_weapon == @pc_weapon
  end

  def results
    if @player_weapon == "paper" && @pc_weapon == "rock"
      @player_wins = true
    elsif @player_weapon == "rock" && @pc_weapon == "scissors"
      @player_wins = true
    elsif @player_weapon == "scissors" && @pc_weapon == "paper"
      @player_wins = true
    end
  end

  def pc_weapon_selector
    ["rock", "paper", "scissors"].sample
  end
end