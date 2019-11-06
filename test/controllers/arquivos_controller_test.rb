require 'test_helper'

class ArquivosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get arquivos_new_url
    assert_response :success
  end

  test "should get create" do
    get arquivos_create_url
    assert_response :success
  end

  test "should get edit" do
    get arquivos_edit_url
    assert_response :success
  end

  test "should get show" do
    get arquivos_show_url
    assert_response :success
  end

  test "should get index" do
    get arquivos_index_url
    assert_response :success
  end

end
