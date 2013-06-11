require 'test_helper'

class OrganizationFilesControllerTest < ActionController::TestCase
  setup do
    @organization_file = organization_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_file" do
    assert_difference('OrganizationFile.count') do
      post :create, organization_file: { name: @organization_file.name, user_id: @organization_file.user_id }
    end

    assert_redirected_to organization_file_path(assigns(:organization_file))
  end

  test "should show organization_file" do
    get :show, id: @organization_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_file
    assert_response :success
  end

  test "should update organization_file" do
    put :update, id: @organization_file, organization_file: { name: @organization_file.name, user_id: @organization_file.user_id }
    assert_redirected_to organization_file_path(assigns(:organization_file))
  end

  test "should destroy organization_file" do
    assert_difference('OrganizationFile.count', -1) do
      delete :destroy, id: @organization_file
    end

    assert_redirected_to organization_files_path
  end
end
