require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Notice.new.valid?
  end
end
