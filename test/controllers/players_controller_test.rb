require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { name: @player.name, position_id: @player.position_id } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should fail to create player on empty name" do
    assert_difference 'Player.count', 0 do
      post players_url, params: { player: { name: '', position_id: @player.position_id } }
    end
    assert_response :unprocessable_entity

  end
  test "should fail to create player on invalid position_id" do
    assert_difference 'Player.count', 0 do
      post players_url, params: { player: { name: @player.name, position_id: -1 } }
    end
    assert_response :unprocessable_entity

  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { name: @player.name, position_id: @player.position_id } }
    assert_redirected_to player_url(@player)
  end

  test "should fail to update player on empty name" do
    patch player_url(@player), params: { player: { name: '', position_id: @player.position_id } }
    assert_response :unprocessable_entity

  end
  test "should fail to update player on invalid position_id" do
    patch player_url(@player), params: { player: { name: '', position_id: -1 } }
    assert_response :unprocessable_entity

  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
