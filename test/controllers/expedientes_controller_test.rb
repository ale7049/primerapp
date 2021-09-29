require 'test_helper'

class ExpedientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expediente = expedientes(:one)
  end

  test "should get index" do
    get expedientes_url
    assert_response :success
  end

  test "should get new" do
    get new_expediente_url
    assert_response :success
  end

  test "should create expediente" do
    assert_difference('Expediente.count') do
      post expedientes_url, params: { expediente: { alumno: @expediente.alumno, escuela: @expediente.escuela, numero_boleta: @expediente.numero_boleta, status: @expediente.status } }
    end

    assert_redirected_to expediente_url(Expediente.last)
  end

  test "should show expediente" do
    get expediente_url(@expediente)
    assert_response :success
  end

  test "should get edit" do
    get edit_expediente_url(@expediente)
    assert_response :success
  end

  test "should update expediente" do
    patch expediente_url(@expediente), params: { expediente: { alumno: @expediente.alumno, escuela: @expediente.escuela, numero_boleta: @expediente.numero_boleta, status: @expediente.status } }
    assert_redirected_to expediente_url(@expediente)
  end

  test "should destroy expediente" do
    assert_difference('Expediente.count', -1) do
      delete expediente_url(@expediente)
    end

    assert_redirected_to expedientes_url
  end
end
