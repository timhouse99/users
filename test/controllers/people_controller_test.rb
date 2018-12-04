require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { UserAccounts: @person.UserAccounts, access_granted_date: @person.access_granted_date, access_suspended_date: @person.access_suspended_date, department_id: @person.department_id, eamil_address: @person.eamil_address, first_name: @person.first_name, gecos: @person.gecos, home_dir: @person.home_dir, last_name: @person.last_name, middle_initial: @person.middle_initial, password: @person.password, phone_number: @person.phone_number, role: @person.role, suffix: @person.suffix, user_id: @person.user_id } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { UserAccounts: @person.UserAccounts, access_granted_date: @person.access_granted_date, access_suspended_date: @person.access_suspended_date, department_id: @person.department_id, eamil_address: @person.eamil_address, first_name: @person.first_name, gecos: @person.gecos, home_dir: @person.home_dir, last_name: @person.last_name, middle_initial: @person.middle_initial, password: @person.password, phone_number: @person.phone_number, role: @person.role, suffix: @person.suffix, user_id: @person.user_id } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
