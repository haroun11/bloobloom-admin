require "test_helper"

class LensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lense = lenses(:one)
  end

  test "should get index" do
    get lenses_url, as: :json
    assert_response :success
  end

  test "should create lense" do
    assert_difference('Lense.count') do
      post lenses_url, params: { lense: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show lense" do
    get lense_url(@lense), as: :json
    assert_response :success
  end

  test "should update lense" do
    patch lense_url(@lense), params: { lense: {  } }, as: :json
    assert_response 200
  end

  test "should destroy lense" do
    assert_difference('Lense.count', -1) do
      delete lense_url(@lense), as: :json
    end

    assert_response 204
  end
end
