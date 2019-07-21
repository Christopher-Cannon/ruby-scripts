# Caeser cipher
def cipher(string, shift)
  alpha = ('a'..'z').to_a
  cipher = ""

  string.downcase.chars.each do |c|
    c.match(/[^a-z]/) ?
      cipher << c
    : alpha.each_with_index do |a, i|
        c == a ?
          i + shift > 25 ?
            cipher << alpha[(i + shift) - 25]
          : cipher << alpha[i + shift]
        : next
      end
  end
  return cipher
end

og_string = "This is a test string! And some-hyphens"
coded_string = cipher(og_string, 11)

puts "Original: #{og_string}"
puts "Cipher  : #{coded_string}"
