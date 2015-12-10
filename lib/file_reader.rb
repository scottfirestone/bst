class FileReader
  attr_reader :file_as_array, :unique_chars

  def initialize(filename)
    @filename = filename
  end

  def read   # => nil
    @file = File.read(@filename)
  end

  def document_to_array (file)
    @file_as_array = file.split(/\n/).reject(&:empty?)
  end

  def remove_duplicates
    @file_as_array = @file_as_array.uniq!
  end

  def count_uniques
    @unique_chars = @file_as_array.length
  end

  def prep_for_load
    read
    document_to_array
    remove_duplicates
    count_uniques
  end
end

reader = FileReader.new('file.txt')
p reader.prep_for_load
