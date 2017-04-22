def substrings text, dictionary
  string = text.downcase.gsub(/[^\p{Alnum}\p{Space}]/, '').split
  count = Hash.new(0)
  dictionary.each do |a|
    string.each do |b|
      (b.include? a)? count[a] += 1 : nil
    end
  end
  count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "#{substrings("below", dictionary)}"
puts "#{substrings("Howdy partner, sit down! How's it going?", dictionary)}"
