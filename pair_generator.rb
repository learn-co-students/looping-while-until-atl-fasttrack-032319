students = ["Reina", "Deka", "Jess", "Otis", "Mary", "Ronnie", "Sharolyn", "Jaylen", "Alex", "Jacoby", "Aeisha", "Leland", "Citlali", "Bintang"]

def random_pairs1(names)
  count = names.length/2
  count.times do
    make_pair(names)
  end
end

def make_pair(names)
  count = names.length
  student1 = names[rand(count)]
  #loop, picking random student until it's different
  student2 = names[rand(count)]
  while student1 == student2
    student2 = names[rand(count)]
  end
  #take both students out of the list, then write out pair
  names.delete(student1)
  names.delete(student2)
  puts "#{student1} is working with #{student2}"
end

def random_pairs2(names)
  #sort students into random order
  random_students = names.shuffle
  #as long as there are students not in a pair
  until random_students.empty?
  #take 2 students out of array
  student1 = random_students.pop
  student2 = random_students.pop
  #and say they're working together
  puts "#{student1} is working with #{student2}"
  end
end
random_pairs2(students)