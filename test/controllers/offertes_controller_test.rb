require 'test_helper'

class OffertesControllerTest < ActionController::TestCase
  setup do
    @offerte = offertes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offertes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offerte" do
    assert_difference('Offerte.count') do
      post :create, offerte: { datum: @offerte.datum, offerte_nummer: @offerte.offerte_nummer, onderwerp: @offerte.onderwerp, status: @offerte.status }
    end

    assert_redirected_to offerte_path(assigns(:offerte))
  end

  test "should show offerte" do
    get :show, id: @offerte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offerte
    assert_response :success
  end

  test "should update offerte" do
    patch :update, id: @offerte, offerte: { datum: @offerte.datum, offerte_nummer: @offerte.offerte_nummer, onderwerp: @offerte.onderwerp, status: @offerte.status }
    assert_redirected_to offerte_path(assigns(:offerte))
  end

  test "should destroy offerte" do
    assert_difference('Offerte.count', -1) do
      delete :destroy, id: @offerte
    end

    assert_redirected_to offertes_path
  end
end
