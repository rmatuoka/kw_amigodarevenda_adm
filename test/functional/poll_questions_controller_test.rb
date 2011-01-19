require 'test_helper'

class PollQuestionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => PollQuestion.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    PollQuestion.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    PollQuestion.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to poll_question_url(assigns(:poll_question))
  end
  
  def test_edit
    get :edit, :id => PollQuestion.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    PollQuestion.any_instance.stubs(:valid?).returns(false)
    put :update, :id => PollQuestion.first
    assert_template 'edit'
  end

  def test_update_valid
    PollQuestion.any_instance.stubs(:valid?).returns(true)
    put :update, :id => PollQuestion.first
    assert_redirected_to poll_question_url(assigns(:poll_question))
  end
  
  def test_destroy
    poll_question = PollQuestion.first
    delete :destroy, :id => poll_question
    assert_redirected_to poll_questions_url
    assert !PollQuestion.exists?(poll_question.id)
  end
end
