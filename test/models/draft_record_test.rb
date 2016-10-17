require 'test_helper'

class DraftRecordTest < ActiveSupport::TestCase


    test 'Should not be able to add duplicate draft record' do
        # Try and insert draft record like first fixture
        pos = Position.new(name: 'wr')
        pos.save()
        play = Player.new(name: 'test_player', position: pos)
        pos.save()
        team = Team.new(name: 'test_team')
        team.save()


        dr = DraftRecord.new(player: play, team: team)
        assert_equal dr.save(), true

        # Submitting again will raise an error
        dr = DraftRecord.new(player: play, team: team)
        assert_raises(ActiveRecord::RecordNotUnique){
            dr.save()
        }
    end
end

