require 'test_helper'

class UserAccountsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_accounts_group = user_accounts_groups(:one)
  end

  test "should get index" do
    get user_accounts_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_user_accounts_group_url
    assert_response :success
  end

  test "should create user_accounts_group" do
    assert_difference('UserAccountsGroup.count') do
      post user_accounts_groups_url, params: { user_accounts_group: { account_id: @user_accounts_group.account_id, group_id: @user_accounts_group.group_id } }
    end

    assert_redirected_to user_accounts_group_url(UserAccountsGroup.last)
  end

  test "should show user_accounts_group" do
    get user_accounts_group_url(@user_accounts_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_accounts_group_url(@user_accounts_group)
    assert_response :success
  end

  test "should update user_accounts_group" do
    patch user_accounts_group_url(@user_accounts_group), params: { user_accounts_group: { account_id: @user_accounts_group.account_id, group_id: @user_accounts_group.group_id } }
    assert_redirected_to user_accounts_group_url(@user_accounts_group)
  end

  test "should destroy user_accounts_group" do
    assert_difference('UserAccountsGroup.count', -1) do
      delete user_accounts_group_url(@user_accounts_group)
    end

    assert_redirected_to user_accounts_groups_url
  end
end
