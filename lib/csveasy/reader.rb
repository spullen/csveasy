require 'csv'

class Reader

  def initialize(filepath)
    @filepath = filepath
  end

  def read
    CSV.read(@filepath, :headers => true, :skip_blanks => true).inject([]) do |array, row|
      array << Mash.new(Hash[row])
    end
  end

end
