require 'test_helper'

class PetsControllerTest < ActionController::TestCase
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post :create, pet: { Age: @pet.Age, Breed: @pet.Breed, Date_of_last_visit: @pet.Date_of_last_visit, Name_of_pet: @pet.Name_of_pet, Type_of_pet: @pet.Type_of_pet, Weight: @pet.Weight }
    end

    assert_redirected_to pet_path(assigns(:pet))
  end

  test "should show pet" do
    get :show, id: @pet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet
    assert_response :success
  end

  test "should update pet" do
    patch :update, id: @pet, pet: { Age: @pet.Age, Breed: @pet.Breed, Date_of_last_visit: @pet.Date_of_last_visit, Name_of_pet: @pet.Name_of_pet, Type_of_pet: @pet.Type_of_pet, Weight: @pet.Weight }
    assert_redirected_to pet_path(assigns(:pet))
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete :destroy, id: @pet
    end

    assert_redirected_to pets_path
  end
end
