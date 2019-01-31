require 'test_helper'

class StudentformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentform = studentforms(:one)
  end

  test "should get index" do
    get studentforms_url
    assert_response :success
  end

  test "should get new" do
    get new_studentform_url
    assert_response :success
  end

  test "should create studentform" do
    assert_difference('Studentform.count') do
      post studentforms_url, params: { studentform: { address: @studentform.address, name: @studentform.name, regno: @studentform.regno, telephone: @studentform.telephone } }
    end

    assert_redirected_to studentform_url(Studentform.last)
  end

  test "should show studentform" do
    get studentform_url(@studentform)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentform_url(@studentform)
    assert_response :success
  end

  test "should update studentform" do
    patch studentform_url(@studentform), params: { studentform: { address: @studentform.address, name: @studentform.name, regno: @studentform.regno, telephone: @studentform.telephone } }
    assert_redirected_to studentform_url(@studentform)
  end

  test "should destroy studentform" do
    assert_difference('Studentform.count', -1) do
      delete studentform_url(@studentform)
    end

    assert_redirected_to studentforms_url
  end
end
