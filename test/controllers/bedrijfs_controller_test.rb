require 'test_helper'

class BedrijfsControllerTest < ActionController::TestCase
  setup do
    @bedrijf = bedrijfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bedrijfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bedrijf" do
    assert_difference('Bedrijf.count') do
      post :create, bedrijf: { bedrijfs_naam: @bedrijf.bedrijfs_naam, email: @bedrijf.email, kvk: @bedrijf.kvk, land: @bedrijf.land, nummer: @bedrijf.nummer, plaats: @bedrijf.plaats, postcode: @bedrijf.postcode, prijs_id: @bedrijf.prijs_id, straat: @bedrijf.straat, website: @bedrijf.website }
    end

    assert_redirected_to bedrijf_path(assigns(:bedrijf))
  end

  test "should show bedrijf" do
    get :show, id: @bedrijf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bedrijf
    assert_response :success
  end

  test "should update bedrijf" do
    patch :update, id: @bedrijf, bedrijf: { bedrijfs_naam: @bedrijf.bedrijfs_naam, email: @bedrijf.email, kvk: @bedrijf.kvk, land: @bedrijf.land, nummer: @bedrijf.nummer, plaats: @bedrijf.plaats, postcode: @bedrijf.postcode, prijs_id: @bedrijf.prijs_id, straat: @bedrijf.straat, website: @bedrijf.website }
    assert_redirected_to bedrijf_path(assigns(:bedrijf))
  end

  test "should destroy bedrijf" do
    assert_difference('Bedrijf.count', -1) do
      delete :destroy, id: @bedrijf
    end

    assert_redirected_to bedrijfs_path
  end
end
