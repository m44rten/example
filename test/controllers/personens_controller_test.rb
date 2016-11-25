require 'test_helper'

class PersonensControllerTest < ActionController::TestCase
  setup do
    @personen = personens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personen" do
    assert_difference('Personen.count') do
      post :create, personen: { achternaam: @personen.achternaam, afdeling: @personen.afdeling, bedrijf_id: @personen.bedrijf_id, email: @personen.email, functie: @personen.functie, mobiel: @personen.mobiel, telefoon: @personen.telefoon, tussenvoegsel: @personen.tussenvoegsel, type: @personen.type, voornaam: @personen.voornaam }
    end

    assert_redirected_to personen_path(assigns(:personen))
  end

  test "should show personen" do
    get :show, id: @personen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personen
    assert_response :success
  end

  test "should update personen" do
    patch :update, id: @personen, personen: { achternaam: @personen.achternaam, afdeling: @personen.afdeling, bedrijf_id: @personen.bedrijf_id, email: @personen.email, functie: @personen.functie, mobiel: @personen.mobiel, telefoon: @personen.telefoon, tussenvoegsel: @personen.tussenvoegsel, type: @personen.type, voornaam: @personen.voornaam }
    assert_redirected_to personen_path(assigns(:personen))
  end

  test "should destroy personen" do
    assert_difference('Personen.count', -1) do
      delete :destroy, id: @personen
    end

    assert_redirected_to personens_path
  end
end
