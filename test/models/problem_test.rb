require 'test_helper'

class ProblemTest < ActiveSupport::TestCase
  test "should return zero when submit and accepted is zero" do
    simpleProblem = problems(:simpleProblem)
    simpleProblem.submit = 0
    simpleProblem.accepted = 0

    assert problems(:simpleProblem).getAcceptedRate == 0.to_f, "Not return zero"
  end

  test "should return the rate of accepted/sbumit" do
    simpleProblem = problems(:simpleProblem)
    simpleProblem.submit = 100
    simpleProblem.accepted = 50

    assert simpleProblem.getAcceptedRate == 50.to_f, "No return accepted / submit"
  end
end
