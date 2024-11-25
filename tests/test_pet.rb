require 'minitest/autorun'
require_relative '../pet_tracker'

class TestPet < Minitest::Test
  def setup
    @pet = Pet.new("Buddy", "Dog", 3)
  end

  def test_pet_initialization
    assert_equal "Buddy", @pet.name
    assert_equal "Dog", @pet.type
    assert_equal 3, @pet.age
  end

  def test_update_age
    @pet.age = 4
    assert_equal 4, @pet.age
  end

  def test_pet_info
    assert_equal "Name: Buddy, Type: Dog, Age: 3", @pet.info
  end
end
