require 'test_helper'

class ObjsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obj = objs(:one)
  end

  test "should get index" do
    get objs_url
    assert_response :success
  end

  test "should get new" do
    get new_obj_url
    assert_response :success
  end

  test "should create obj" do
    assert_difference('Obj.count') do
      post objs_url, params: { obj: { category: @obj.category, checktimes: @obj.checktimes, district: @obj.district, expdate: @obj.expdate, geo: @obj.geo, id: @obj.id, ikomek: @obj.ikomek, img: @obj.img, inventar: @obj.inventar, ksk: @obj.ksk, name: @obj.name, sdate: @obj.sdate, usergeo1: @obj.usergeo1, usergeo2: @obj.usergeo2, usergeo3: @obj.usergeo3, userimg1: @obj.userimg1, userimg2: @obj.userimg2, userimg3: @obj.userimg3 } }
    end

    assert_redirected_to obj_url(Obj.last)
  end

  test "should show obj" do
    get obj_url(@obj)
    assert_response :success
  end

  test "should get edit" do
    get edit_obj_url(@obj)
    assert_response :success
  end

  test "should update obj" do
    patch obj_url(@obj), params: { obj: { category: @obj.category, checktimes: @obj.checktimes, district: @obj.district, expdate: @obj.expdate, geo: @obj.geo, id: @obj.id, ikomek: @obj.ikomek, img: @obj.img, inventar: @obj.inventar, ksk: @obj.ksk, name: @obj.name, sdate: @obj.sdate, usergeo1: @obj.usergeo1, usergeo2: @obj.usergeo2, usergeo3: @obj.usergeo3, userimg1: @obj.userimg1, userimg2: @obj.userimg2, userimg3: @obj.userimg3 } }
    assert_redirected_to obj_url(@obj)
  end

  test "should destroy obj" do
    assert_difference('Obj.count', -1) do
      delete obj_url(@obj)
    end

    assert_redirected_to objs_url
  end
end
