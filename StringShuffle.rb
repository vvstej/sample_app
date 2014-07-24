class ShuffleString < String
  def string_shuffle() 
    self.split('').shuffle().join();
  end
end