require 'test_helper'

class OfferteRegelsControllerTest < ActionController::TestCase
  setup do
    @offerte_regel = offerte_regels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offerte_regels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offerte_regel" do
    assert_difference('OfferteRegel.count') do
      post :create, offerte_regel: { aantal: @offerte_regel.aantal, artikel: @offerte_regel.artikel, offerte_id: @offerte_regel.offerte_id, omschrijving: @offerte_regel.omschrijving, post: @offerte_regel.post, prijs: @offerte_regel.prijs }
    end

    assert_redirected_to offerte_regel_path(assigns(:offerte_regel))
  end

  test "should show offerte_regel" do
    get :show, id: @offerte_regel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offerte_regel
    assert_response :success
  end

  test "should update offerte_regel" do
    patch :update, id: @offerte_regel, offerte_regel: { aantal: @offerte_regel.aantal, artikel: @offerte_regel.artikel, offerte_id: @offerte_regel.offerte_id, omschrijving: @offerte_regel.omschrijving, post: @offerte_regel.post, prijs: @offerte_regel.prijs }
    assert_redirected_to offerte_regel_path(assigns(:offerte_regel))
  end

  test "should destroy offerte_regel" do
    assert_difference('OfferteRegel.count', -1) do
      delete :destroy, id: @offerte_regel
    end

    assert_redirected_to offerte_regels_path
  end
end
