require 'test_helper'

class TeamTest < ActiveSupport::TestCase
    test 'Team name is validated' do
        t = Team.new
        assert_not t.valid?
        assert_equal [:name], t.errors.keys
    end

end
