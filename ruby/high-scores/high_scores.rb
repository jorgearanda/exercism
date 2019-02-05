class HighScores
  def initialize(scores)
    @scores =  scores
  end

  def scores
    @scores
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.sort.reverse[0..2]
  end

  def report
    report_latest + report_comparison
  end

  def report_latest
    "Your latest score was #{latest}. "
  end

  def report_comparison
    latest == personal_best ?
      "That's your personal best!" :
      "That's #{personal_best - latest} short of your personal best!"
  end
end
