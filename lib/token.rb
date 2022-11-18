# frozen_string_literal: true

# Create the token node
class TokenNode
  attr_reader :position, :adjacent_token

  def initialize(position)
    @position = position
    @adjacent_token = []    
  end

  # add tokens in reach
  def add_adjacent_token(token)
    @adjacent_token << token
  end
end
