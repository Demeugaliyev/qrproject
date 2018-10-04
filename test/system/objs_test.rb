require "application_system_test_case"

class ObjsTest < ApplicationSystemTestCase
  setup do
    @obj = objs(:one)
  end

  test "visiting the index" do
    visit objs_url
    assert_selector "h1", text: "Objs"
  end

  test "creating a Obj" do
    visit objs_url
    click_on "New Obj"

    fill_in "Category", with: @obj.category
    fill_in "Checktimes", with: @obj.checktimes
    fill_in "District", with: @obj.district
    fill_in "Expdate", with: @obj.expdate
    fill_in "Geo", with: @obj.geo
    fill_in "Id", with: @obj.id
    fill_in "Ikomek", with: @obj.ikomek
    fill_in "Img", with: @obj.img
    fill_in "Inventar", with: @obj.inventar
    fill_in "Ksk", with: @obj.ksk
    fill_in "Name", with: @obj.name
    fill_in "Sdate", with: @obj.sdate
    fill_in "Usergeo1", with: @obj.usergeo1
    fill_in "Usergeo2", with: @obj.usergeo2
    fill_in "Usergeo3", with: @obj.usergeo3
    fill_in "Userimg1", with: @obj.userimg1
    fill_in "Userimg2", with: @obj.userimg2
    fill_in "Userimg3", with: @obj.userimg3
    click_on "Create Obj"

    assert_text "Obj was successfully created"
    click_on "Back"
  end

  test "updating a Obj" do
    visit objs_url
    click_on "Edit", match: :first

    fill_in "Category", with: @obj.category
    fill_in "Checktimes", with: @obj.checktimes
    fill_in "District", with: @obj.district
    fill_in "Expdate", with: @obj.expdate
    fill_in "Geo", with: @obj.geo
    fill_in "Id", with: @obj.id
    fill_in "Ikomek", with: @obj.ikomek
    fill_in "Img", with: @obj.img
    fill_in "Inventar", with: @obj.inventar
    fill_in "Ksk", with: @obj.ksk
    fill_in "Name", with: @obj.name
    fill_in "Sdate", with: @obj.sdate
    fill_in "Usergeo1", with: @obj.usergeo1
    fill_in "Usergeo2", with: @obj.usergeo2
    fill_in "Usergeo3", with: @obj.usergeo3
    fill_in "Userimg1", with: @obj.userimg1
    fill_in "Userimg2", with: @obj.userimg2
    fill_in "Userimg3", with: @obj.userimg3
    click_on "Update Obj"

    assert_text "Obj was successfully updated"
    click_on "Back"
  end

  test "destroying a Obj" do
    visit objs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Obj was successfully destroyed"
  end
end
