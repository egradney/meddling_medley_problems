require "byebug"

# def duos(str)

#     count = 0

#     (0...str.length-1). each do |i|
#         if str[i] == str[i+1]
#             count +=1
#         end
#     end

#     count
# end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0


# def sentence_swap(sent, hash)

#     words = sent.split(' ')
#     new_words = words.map do |word|
#         if hash[word]
#             hash[word]
#         else
#             word
#         end
#     end

#     new_words.join(' ')

# end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'

# p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
# ) # 'keep running okay'

# def hash_mapped(hash, prc, &blk)

#     mapped = Hash.new()

#     hash.each do |char, n|
#         mapped[blk.call(char)] = prc.call(n)
#     end

#     mapped

# end

# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

# def counted_characters(str)

#     chars = str.split('')

#     chars.select { |char| chars.count(char) > 2 }.uniq


# end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []

# def triplet_true?(str)

#     chars = str.split('')

#     chars.each.with_index do |char, i|
#         if char == chars[i+1] && char == chars[i+2]
#             return true
#         end
#     end

#     false

# end

# p triplet_true?('caaabb')        # true
# p triplet_true?('terrrrrible')   # true
# p triplet_true?('runninggg')     # true
# p triplet_true?('bootcamp')      # false
# p triplet_true?('e')             # false


# def energetic_encoding(str, hash)

#     chars = str.split('')

#     new_str = ''

#     chars.each do |char|
#         if hash[char]
#             new_str += hash[char]
#         else
#             new_str += '?'
#         end
#     end

#     new_str

# end

# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) # 'zimp ziu'

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {}) # '????'


# def uncompress(str)

#     chars = str.split('')
#     new_str = ''

#     chars.each_with_index do |ele, i|
#         if i.to_i.even?
        
#             times = chars[i+1].to_i
#             times.times { new_str += ele}

#         end
#     end

#     new_str

# end

# p uncompress('a2b4c1') # 'aabbbbc'
# p uncompress('b1o2t1') # 'boot'
# p uncompress('x3y1x2z4') # 'xxxyxxzzzz'

# def conjunct_select(arr, *procs)

#     arr.select { |ele| procs.all? { |proc| proc.call(ele) } }


# end


# is_positive = Proc.new { |n| n > 0 }
# is_odd = Proc.new { |n| n.odd? }
# less_than_ten = Proc.new { |n| n < 10 }

# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]

# def convert_pig_latin(sent)

#     words = sent.split(' ')

#    new_words = words.map do |word|
#         if word.length < 3
#             word
#         elsif 'aeiouAEIOU'.include? word[0]
#             word += 'yay'
#         else
#             v_idx = word.index(/[aeiou]/)
#             if word == word.capitalize
#                 word[v_idx...word.length].capitalize + word[0...v_idx].downcase + 'ay'
#             else
#                 word[v_idx...word.length] + word[0...v_idx] + 'ay'
#             end
#         end
#     end

#     new_words.join(' ')
# end

# p convert_pig_latin('We like to eat bananas') # "We ikelay to eatyay ananasbay"
# p convert_pig_latin('I cannot find the trash') # "I annotcay indfay ethay ashtray"
# p convert_pig_latin('What an interesting problem') # "Atwhay an interestingyay oblempray"
# p convert_pig_latin('Her family flew to France') # "Erhay amilyfay ewflay to Ancefray"
# p convert_pig_latin('Our family flew to France') # "Ouryay amilyfay ewflay to Ancefray"

# def reverberate(sent)

#     words = sent.split(' ')

#     new_words = words.map do |word|
#         if word.length < 3
#             word
#         elsif 'aeiouAEIOU'.include? word[-1]
#             word += word.downcase
#         else
#             v_idx = word.rindex(/[aeiou]/)
 
#             word += word[v_idx...word.length]
#         end
#     end

#     new_words.join(' ')


# end

# p reverberate('We like to go running fast') # "We likelike to go runninging fastast"
# p reverberate('He cannot find the trash') # "He cannotot findind thethe trashash"
# p reverberate('Pasta is my favorite dish') # "Pastapasta is my favoritefavorite dishish"
# p reverberate('Her family flew to France') # "Herer familyily flewew to Francefrance"

# def disjunct_select(arr, *procs)

#     arr.select { |ele| procs.any? { |proc| proc.call(ele) } }

# end

# longer_four = Proc.new { |s| s.length > 4 }
# contains_o = Proc.new { |s| s.include?('o') }
# starts_a = Proc.new { |s| s[0] == 'a' }

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
# ) # ["apple", "teeming"]

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
#     contains_o
# ) # ["dog", "apple", "teeming", "boot"]

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
#     contains_o,
#     starts_a
# ) # ["ace", "dog", "apple", "teeming", "boot"]

