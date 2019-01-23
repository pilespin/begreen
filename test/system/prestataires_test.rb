require "application_system_test_case"

class PrestatairesTest < ApplicationSystemTestCase
  setup do
    @prestataire = prestataires(:one)
  end

  test "visiting the index" do
    visit prestataires_url
    assert_selector "h1", text: "Prestataires"
  end

  test "creating a Prestataire" do
    visit prestataires_url
    click_on "New Prestataire"

    fill_in "Categorie", with: @prestataire.categorie
    fill_in "Description", with: @prestataire.description
    fill_in "Imageurl", with: @prestataire.imageurl
    fill_in "Nom", with: @prestataire.nom
    fill_in "Prestation", with: @prestataire.prestation
    fill_in "Remise", with: @prestataire.remise
    fill_in "Ville", with: @prestataire.ville
    click_on "Create Prestataire"

    assert_text "Prestataire was successfully created"
    click_on "Back"
  end

  test "updating a Prestataire" do
    visit prestataires_url
    click_on "Edit", match: :first

    fill_in "Categorie", with: @prestataire.categorie
    fill_in "Description", with: @prestataire.description
    fill_in "Imageurl", with: @prestataire.imageurl
    fill_in "Nom", with: @prestataire.nom
    fill_in "Prestation", with: @prestataire.prestation
    fill_in "Remise", with: @prestataire.remise
    fill_in "Ville", with: @prestataire.ville
    click_on "Update Prestataire"

    assert_text "Prestataire was successfully updated"
    click_on "Back"
  end

  test "destroying a Prestataire" do
    visit prestataires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prestataire was successfully destroyed"
  end
end
