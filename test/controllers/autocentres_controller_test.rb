require 'test_helper'

class AutocentresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autocentre = autocentres(:one)
  end

  test "should get index" do
    get autocentres_url
    assert_response :success
  end

  test "should get new" do
    get new_autocentre_url
    assert_response :success
  end

  test "should create autocentre" do
    assert_difference('Autocentre.count') do
      post autocentres_url, params: { autocentre: {  } }
    end

    assert_redirected_to autocentre_url(Autocentre.last)
  end

  test "should show autocentre" do
    get autocentre_url(@autocentre)
    assert_response :success
  end

  test "should get edit" do
    get edit_autocentre_url(@autocentre)
    assert_response :success
  end

  test "should update autocentre" do
    patch autocentre_url(@autocentre), params: { autocentre: {  } }
    assert_redirected_to autocentre_url(@autocentre)
  end

  test "should destroy autocentre" do
    assert_difference('Autocentre.count', -1) do
      delete autocentre_url(@autocentre)
    end

    assert_redirected_to autocentres_url
  end
end
