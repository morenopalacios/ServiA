require 'test_helper'

class RelacionsControllerTest < ActionController::TestCase
  setup do
    @relacion = relacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relacion" do
    assert_difference('Relacion.count') do
      post :create, relacion: { auto_id: @relacion.auto_id, estado_id: @relacion.estado_id, servicio_id: @relacion.servicio_id }
    end

    assert_redirected_to relacion_path(assigns(:relacion))
  end

  test "should show relacion" do
    get :show, id: @relacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relacion
    assert_response :success
  end

  test "should update relacion" do
    patch :update, id: @relacion, relacion: { auto_id: @relacion.auto_id, estado_id: @relacion.estado_id, servicio_id: @relacion.servicio_id }
    assert_redirected_to relacion_path(assigns(:relacion))
  end

  test "should destroy relacion" do
    assert_difference('Relacion.count', -1) do
      delete :destroy, id: @relacion
    end

    assert_redirected_to relacions_path
  end
end
