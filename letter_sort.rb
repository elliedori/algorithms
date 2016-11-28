# given a phrase, return its letters in alphabetical order, minus duplicates and space
# example input: "the hat is cool"
# example output: "acehilost"

def alpha_sort(phrase)
  char_count = Hash.new(0)

  phrase.split("").each { |char| char_count[char]+=1 }

  single_chars = char_count.keys
  single_chars.delete(" ")

  idx = 0
  sort_done = false
  num_of_sorts = single_chars.length - 2

  
  until sort_done
    changes = 0
    0.upto(num_of_sorts) do |i|
      if single_chars[i] > single_chars[i+1]
        single_chars[i], single_chars[i+1] = single_chars[i+1], single_chars[i]
        changes += 1
      end
    end
    sort_done = true if changes == 0
  end

  single_chars.join
end


p alpha_sort("the hat is cool")

