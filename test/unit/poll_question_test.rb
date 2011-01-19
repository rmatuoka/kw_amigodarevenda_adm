require 'test_helper'

class PollQuestionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert PollQuestion.new.valid?
  end
end
