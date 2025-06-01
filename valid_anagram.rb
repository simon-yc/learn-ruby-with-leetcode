# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    # O(n) time complexity
    # O(1) space complexity 
    #   (assuming the character set is limited, e.g., lowercase English letters)
    #   (otherwise, O(n) space complexity)

    return false if s.length != t.length

    char_count = Hash.new(0)

    s.each_char do |char|
        char_count[char] += 1
    end

    t.each_char do |char|
        return false unless char_count[char] > 0
        char_count[char] -= 1
    end

    true
end

# test cases
test_cases = [
    (s = "hello", t = "hey", expected = false),
    (s = "anagram", t = "nagaram", expected = true),
    (s = "listen", t = "silent", expected = true),
    (s = "mixson", t = "simonx", expected = true),
    (s = "rat", t = "car", expected = false),
]

test_cases.each do |s, t, expected|
    result = is_anagram(s, t)
    raise "Test failed: expected #{expected}, got #{result}" unless result == expected
end

puts "All tests passed!"
