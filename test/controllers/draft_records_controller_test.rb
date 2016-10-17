require 'test_helper'

class DraftRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draft_record = draft_records(:one)
  end

  test "should get index" do
    get draft_records_url
    assert_response :success
  end

  test "should get new" do
    get new_draft_record_url
    assert_response :success
  end

  test "should create draft_record" do
    assert_difference('DraftRecord.count') do
      post draft_records_url, params: { draft_record: { player_id: players(:two).id, team_id: teams(:two).id } }
    end

    assert_redirected_to draft_record_url(DraftRecord.last)
  end

  test "should show draft_record" do
    get draft_record_url(@draft_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_draft_record_url(@draft_record)
    assert_response :success
  end

  test "should update draft_record" do
    patch draft_record_url(@draft_record), params: { draft_record: { player_id: @draft_record.player_id, team_id: teams(:two).id  } }
    assert_redirected_to draft_record_url(@draft_record)
  end

  test "should destroy draft_record" do
    assert_difference('DraftRecord.count', -1) do
      delete draft_record_url(@draft_record)
    end

    assert_redirected_to draft_records_url
  end
end
