require 'test_helper'

class PositionTest < ActiveSupport::TestCase
    test 'Position name is validated' do
        p = Position.new
        assert_not p.valid?
        assert_equal [:name], p.errors.keys
    end
end
