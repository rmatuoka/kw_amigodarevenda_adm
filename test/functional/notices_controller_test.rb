require 'test_helper'

class NoticesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Notice.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Notice.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Notice.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to notice_url(assigns(:notice))
  end
  
  def test_edit
    get :edit, :id => Notice.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Notice.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Notice.first
    assert_template 'edit'
  end

  def test_update_valid
    Notice.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Notice.first
    assert_redirected_to notice_url(assigns(:notice))
  end
  
  def test_destroy
    notice = Notice.first
    delete :destroy, :id => notice
    assert_redirected_to notices_url
    assert !Notice.exists?(notice.id)
  end
end
