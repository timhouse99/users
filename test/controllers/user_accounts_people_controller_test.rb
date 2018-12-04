require 'test_helper'

class UserAccountsPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_accounts_person = user_accounts_people(:one)
  end

  test "should get index" do
    get user_accounts_people_url
    assert_response :success
  end

  test "should get new" do
    get new_user_accounts_person_url
    assert_response :success
  end

  test "should create user_accounts_person" do
    assert_difference('UserAccountsPerson.count') do
      post user_accounts_people_url, params: { user_accounts_person: { account_id: @user_accounts_person.account_id, person_id: @user_accounts_person.person_id } }
    end

    assert_redirected_to user_accounts_person_url(UserAccountsPerson.last)
  end

  test "should show user_accounts_person" do
    get user_accounts_person_url(@user_accounts_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_accounts_person_url(@user_accounts_person)
    assert_response :success
  end

  test "should update user_accounts_person" do
    patch user_accounts_person_url(@user_accounts_person), params: { user_accounts_person: { account_id: @user_accounts_person.account_id, person_id: @user_accounts_person.person_id } }
    assert_redirected_to user_accounts_person_url(@user_accounts_person)
  end

  test "should destroy user_accounts_person" do
    assert_difference('UserAccountsPerson.count', -1) do
      delete user_accounts_person_url(@user_accounts_person)
    end

    assert_redirected_to user_accounts_people_url
  end
end
