require("minitest/autorun")
require("minitest/rg")
require_relative("../library")

class TestLibrary < Minitest::Test

  def setup
    @library = Library.new([
    {title: "pride_and_prejudice",
      rental_details: {student_name: "Jane", date: "03/10/18"}},
    {title: "the_goldfinch",
    rental_details: {student_name: "Donna", date: "19/10/18"}},
    {title: "the_handmaids_tale",
    rental_details: {student_name: "Margaret", date: "8/11/18"}}
  ])
  end

  def test_get_book
    assert_equal(["pride_and_prejudice", "the_goldfinch", "the_handmaids_tale"], @library.get_books)
  end

end
