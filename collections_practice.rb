def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  element1 = array[1]
  element2 = array[2]
  
  array[1] = element2
  array[2] = element1
  
  array
end

def swap_elements_from_to(array, index, destination_index)
  element1 = array[index]
  element2 = array[destination_index]
  
  array[index] = element2
  array[destination_index] = element1
  
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |item|
    item[2] = "$"
  end
end

def find_a(array)
  a_words = []
  array.each do |word|
    if word.start_with?("a")
      a_words << word
    end
  end
  a_words
end

def sum_array(array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index != 1
      word + "s"
    else
      word
    end
  end
end