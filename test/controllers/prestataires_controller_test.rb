require 'test_helper'

class PrestatairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prestataire = prestataires(:one)
  end

  test "should get index" do
    get prestataires_url
    assert_response :success
  end

  test "should get new" do
    get new_prestataire_url
    assert_response :success
  end

  test "should create prestataire" do
    assert_difference('Prestataire.count') do
      post prestataires_url, params: { prestataire: { categorie: @prestataire.categorie, description: @prestataire.description, imageurl: @prestataire.imageurl, nom: @prestataire.nom, prestation: @prestataire.prestation, remise: @prestataire.remise, ville: @prestataire.ville } }
    end

    assert_redirected_to prestataire_url(Prestataire.last)
  end

  test "should show prestataire" do
    get prestataire_url(@prestataire)
    assert_response :success
  end

  test "should get edit" do
    get edit_prestataire_url(@prestataire)
    assert_response :success
  end

  test "should update prestataire" do
    patch prestataire_url(@prestataire), params: { prestataire: { categorie: @prestataire.categorie, description: @prestataire.description, imageurl: @prestataire.imageurl, nom: @prestataire.nom, prestation: @prestataire.prestation, remise: @prestataire.remise, ville: @prestataire.ville } }
    assert_redirected_to prestataire_url(@prestataire)
  end

  test "should destroy prestataire" do
    assert_difference('Prestataire.count', -1) do
      delete prestataire_url(@prestataire)
    end

    assert_redirected_to prestataires_url
  end
end
