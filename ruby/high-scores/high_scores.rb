class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores =  scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def report
    report_latest + " " + report_comparison
  end

  private

  def report_latest
    "Your latest score was #{latest}."
  end

  def report_comparison
    if latest == personal_best
      "That's your personal best!"
    else
      "That's #{personal_best - latest} short of your personal best!"
    end
  end
end
