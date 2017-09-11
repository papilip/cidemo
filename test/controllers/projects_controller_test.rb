require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { advancement: @project.advancement, created_by: @project.created_by, decription: @project.decription, end_at: @project.end_at, initial_end_at: @project.initial_end_at, is_important: @project.is_important, name: @project.name, start_at: @project.start_at, updated_by: @project.updated_by } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { advancement: @project.advancement, created_by: @project.created_by, decription: @project.decription, end_at: @project.end_at, initial_end_at: @project.initial_end_at, is_important: @project.is_important, name: @project.name, start_at: @project.start_at, updated_by: @project.updated_by } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
