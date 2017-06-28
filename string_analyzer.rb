class StringAnalyzer
  def vowels?(s)
    s.match?(/[aeiou]/i)
  end

  def consonants?(s)
    s.match?(/[b-df-hj-np-tv-z]/i)
  end
end
