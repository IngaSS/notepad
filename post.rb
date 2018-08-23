class Post

  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console


  end

  def to_strngs

  end

  def save
    f = File.new(file_path, "w:UTR-8")
    for item in to_strings do
      f.puts(item)
    end
    f.close

  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return current_path + "/" + file_name
  end
end