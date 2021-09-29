require "application_system_test_case"

class ExpedientesTest < ApplicationSystemTestCase
  setup do
    @expediente = expedientes(:one)
  end

  test "visiting the index" do
    visit expedientes_url
    assert_selector "h1", text: "Expedientes"
  end

  test "creating a Expediente" do
    visit expedientes_url
    click_on "New Expediente"

    fill_in "Alumno", with: @expediente.alumno
    fill_in "Escuela", with: @expediente.escuela
    fill_in "Numero boleta", with: @expediente.numero_boleta
    fill_in "Status", with: @expediente.status
    click_on "Create Expediente"

    assert_text "Expediente was successfully created"
    click_on "Back"
  end

  test "updating a Expediente" do
    visit expedientes_url
    click_on "Edit", match: :first

    fill_in "Alumno", with: @expediente.alumno
    fill_in "Escuela", with: @expediente.escuela
    fill_in "Numero boleta", with: @expediente.numero_boleta
    fill_in "Status", with: @expediente.status
    click_on "Update Expediente"

    assert_text "Expediente was successfully updated"
    click_on "Back"
  end

  test "destroying a Expediente" do
    visit expedientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expediente was successfully destroyed"
  end
end
