class Game

  attr_reader :started

  def start
    @started = true
  end

  def started?
    self.started || false
  end
  
  def finish
    @started = false
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if ((left == :rock && right == :scissors) || (left == :scissors && right == :rock))
      "Rock beats scissors!"
    elsif ((left == :paper && right == :rock) || (left == :rock && right == :paper))
      "Paper beats rock!"
    else
      :UNKNOWN
    end
  end

end