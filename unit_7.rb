str = "Lion and Tiger are wild animals"
new_str=str.sub(/Cat/,"Jaguar")

puts "Let's do it's #{new_str} and that ends with that"

puts "___________________"

srt_text="change evry a in text"
new_str_text=srt_text.gsub(/e/,"a")

puts "using and Change text: #{new_str_text}"

puts "___________________"

def show_regexp(string, pattern) 
    match = pattern.match(string)
    if match
        "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
    else
        "no match" 
    end
end 

puts show_regexp('very interesting',/t/)
puts show_regexp('Fats Waller',/lle/)
#puts show_regexp('Fats Waller',/z/)
