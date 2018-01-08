require 'test_helper'

class VotingBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voting_block = voting_blocks(:one)
  end

  test "should get index" do
    get voting_blocks_url
    assert_response :success
  end

  test "should get new" do
    get new_voting_block_url
    assert_response :success
  end

  test "should create voting_block" do
    assert_difference('VotingBlock.count') do
      post voting_blocks_url, params: { voting_block: { random: @voting_block.random } }
    end

    assert_redirected_to voting_block_url(VotingBlock.last)
  end

  test "should show voting_block" do
    get voting_block_url(@voting_block)
    assert_response :success
  end

  test "should get edit" do
    get edit_voting_block_url(@voting_block)
    assert_response :success
  end

  test "should update voting_block" do
    patch voting_block_url(@voting_block), params: { voting_block: { random: @voting_block.random } }
    assert_redirected_to voting_block_url(@voting_block)
  end

  test "should destroy voting_block" do
    assert_difference('VotingBlock.count', -1) do
      delete voting_block_url(@voting_block)
    end

    assert_redirected_to voting_blocks_url
  end
end
