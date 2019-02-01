class Complement
  def self.complements
    { "C" => "G", "G" => "C", "T" => "A", "A" => "U" }
  end

  def self.of_dna(strand)
    strand
      .split("")
      .collect { |nucleotide| self.complements[nucleotide] }
      .join
  end
end
