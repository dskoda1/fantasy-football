require 'test_helper'

class PlayerTest < ActiveSupport::TestCase

    test 'Player name and position is validated' do
        p = Player.new
        assert_not p.valid?
        assert_equal [:position, :name], p.errors.keys

    end
end
