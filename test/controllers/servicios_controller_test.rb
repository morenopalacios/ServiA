require 'test_helper'

class ServiciosControllerTest < ActionController::TestCase
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post :create, servicio: { alineacion_balanceo: @servicio.alineacion_balanceo, auto_id: @servicio.auto_id, cambio_aceite: @servicio.cambio_aceite, electricidad: @servicio.electricidad, mantenimiento: @servicio.mantenimiento, reparación_automotriz: @servicio.reparación_automotriz }
    end

    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should show servicio" do
    get :show, id: @servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio
    assert_response :success
  end

  test "should update servicio" do
    patch :update, id: @servicio, servicio: { alineacion_balanceo: @servicio.alineacion_balanceo, auto_id: @servicio.auto_id, cambio_aceite: @servicio.cambio_aceite, electricidad: @servicio.electricidad, mantenimiento: @servicio.mantenimiento, reparación_automotriz: @servicio.reparación_automotriz }
    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete :destroy, id: @servicio
    end

    assert_redirected_to servicios_path
  end
end
