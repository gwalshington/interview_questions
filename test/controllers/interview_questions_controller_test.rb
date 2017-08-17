require 'test_helper'

class InterviewQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interview_question = interview_questions(:one)
  end

  test "should get index" do
    get interview_questions_url, as: :json
    assert_response :success
  end

  test "should create interview_question" do
    assert_difference('InterviewQuestion.count') do
      post interview_questions_url, params: { interview_question: { question: @interview_question.question } }, as: :json
    end

    assert_response 201
  end

  test "should show interview_question" do
    get interview_question_url(@interview_question), as: :json
    assert_response :success
  end

  test "should update interview_question" do
    patch interview_question_url(@interview_question), params: { interview_question: { question: @interview_question.question } }, as: :json
    assert_response 200
  end

  test "should destroy interview_question" do
    assert_difference('InterviewQuestion.count', -1) do
      delete interview_question_url(@interview_question), as: :json
    end

    assert_response 204
  end
end
