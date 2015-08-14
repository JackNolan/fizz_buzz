class TestingOutput
  def initialize
    @writes = []
  end

  def puts(message)
    @writes << message
  end

  def get_writes
    @writes
  end
end
