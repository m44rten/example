require 'test_helper'

class PrijsControllerTest < ActionController::TestCase
  setup do
    @prij = prijs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prijs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prij" do
    assert_difference('Prij.count') do
      post :create, prij: { naam: @prij.naam, product_nummer: @prij.product_nummer }
    end

    assert_redirected_to prij_path(assigns(:prij))
  end

  test "should show prij" do
    get :show, id: @prij
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prij
    assert_response :success
  end

  test "should update prij" do
    patch :update, id: @prij, prij: { naam: @prij.naam, product_nummer: @prij.product_nummer }
    assert_redirected_to prij_path(assigns(:prij))
  end

  test "should destroy prij" do
    assert_difference('Prij.count', -1) do
      delete :destroy, id: @prij
    end

    assert_redirected_to prijs_path
  end
end
