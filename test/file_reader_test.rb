require 'minitest'
require 'file_reader'

class FileReaderTest < Minitest::Test

  def test_file_reader_object_created
    reader = FileReader.new("hello world")
    assert reader
  end

  
  def test_file_reader_object_to_array
    reader = FileReader.new("hello world")
    assert_equal Array, file.document_to_array
  end
end
