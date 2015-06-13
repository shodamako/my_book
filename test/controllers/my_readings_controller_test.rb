require 'test_helper'

class MyReadingsControllerTest < ActionController::TestCase
  setup do
    @my_reading = my_readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_reading" do
    assert_difference('MyReading.count') do
      post :create, my_reading: { author: @my_reading.author, book: @my_reading.book, isbn: @my_reading.isbn, price: @my_reading.price, publisher: @my_reading.publisher, release_date: @my_reading.release_date }
    end

    assert_redirected_to my_reading_path(assigns(:my_reading))
  end

  test "should show my_reading" do
    get :show, id: @my_reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_reading
    assert_response :success
  end

  test "should update my_reading" do
    patch :update, id: @my_reading, my_reading: { author: @my_reading.author, book: @my_reading.book, isbn: @my_reading.isbn, price: @my_reading.price, publisher: @my_reading.publisher, release_date: @my_reading.release_date }
    assert_redirected_to my_reading_path(assigns(:my_reading))
  end

  test "should destroy my_reading" do
    assert_difference('MyReading.count', -1) do
      delete :destroy, id: @my_reading
    end

    assert_redirected_to my_readings_path
  end
end
