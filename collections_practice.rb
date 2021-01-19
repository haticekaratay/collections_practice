
def sort_array_asc(numArray)
    numArray.sort do |a,b|
        a <=> b
    end
end

def sort_array_desc(numArray)
    numArray.sort do |b,a|
        a <=> b
    end
end

def sort_array_char_count(stringArray)
    stringArray.sort do |a,b|
        a.length <=> b.length
    end   
end

def swap_elements(array)
    array[1],array[2] = array[2], array[1]
    array
end

def reverse_array(numArray)
    numArray.reverse()
end

def kesha_maker(stringArray)
    stringArray.each{|word|
        word[2] = "$"
    }
    stringArray
end

def find_a(stringArray)
    a_word_array = []
    stringArray.each{|word|
        if word.start_with?("a")
            a_word_array.push(word)
        end
    }
    a_word_array
end

def sum_array(numArray)
    #numArray.inject(:+)
    sum = 0
    numArray.each{|num| sum += num}
    sum
end    

def add_s(stringArray)
    stringArray.each_with_index.collect {|string,index|
        if index != 1
            string<<"s"
        else
            string
        end
    }
end
