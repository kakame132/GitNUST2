#!/usr/bin/ruby
BEGIN {
   puts "That's Initializing #{5*6*7} Ruby Program"
}

puts "********************Question-1******************************************"
#Mỗi Person có 2 instance variable là 'name' và 'age'. Tạo setter và getter cho 'name' và 'age'
#code:
class Person_Q1
  @name=nil
  @age=nil
  def getter_name
    return @name
  end
  def getter_age
    return @age
  end
  def set_name(input_name)
    @name=input_name
  end
  def set_age(input_age)
    @age=input_age
  end
end

a=Person_Q1.new()
a.set_name("khanh")
a.set_age(22)
puts a.getter_name
puts a.getter_age


# Khi khởi tạo 1 Person có thể truyền 'name' và 'age'
puts "********************Question-2******************************************"
# Khi khởi tạo 1 Person có thể truyền 'name' và 'age'
class Person_Q2
  @name=nil
  @age=nil
  def initialize(name, age)
    @name=name
    @age=age
  end
  def check
    print @name,@age
  end
end
b=Person_Q2.new("khanh",40)
puts b.check


puts "********************Question-3******************************************"
# Class Person có 1 class variable là count.
class Person_Q3
 @@count=0
  @name=nil
  @age=nil
  def self.count
      @@count
  end
end
q3=Person_Q3.new
puts "class variable count = #{Person_Q3.count}"



puts "********************Question-4******************************************"
#Mỗi lần khởi tạo 1 Person thì biến count sẽ tăng lên 1.
class Person_Q4
  @@count=0
  @name=nil
  @age=nil
  def initialize
    @@count+=1
  end
  def self.return_number
    puts @@count
  end
end
x=Person_Q4.new()
Person_Q4.return_number
y=Person_Q4.new()
z=Person_Q4.new()
Person_Q4.return_number
Person_Q4.return_number


puts "********************Question-5******************************************"
#Person có 1 instane method tên là 'introduce' sẽ in ra kết quả là: "My name is [name của person đó]. I'm [age của person đó] years old".
class Person_Q5
  @name=nil
  @age=nil
  def initialize(name, age)
    @name=name
    @age=age
  end
  def introduce
    print "My name is #@name. I'm #@age years old.\n"
  end
end
q5=Person_Q5.new("khanh","21")
q5.introduce




puts "********************Question-6******************************************"
#Person có 1 class method tên là 'total_count' sẽ in ra kết quả là: "Total number of people is [tổng số Person đã được tạo]"
class Person_Q6
  @@count=0
  @name=nil
  @age=nil
  def initialize
    @@count+=1
  end
  def self.total_count
    print "Total number of people is #@@count.\n"
  end
end
q5_1=Person_Q6.new()
q5_2=Person_Q6.new()
q5_3=Person_Q6.new()
Person_Q6.total_count

print "\n\n\n///////////////////////////////////////////////////////////////////////////////"
print "\nFROM QUESTION NUMBER 7 I WILL USE CLASS PERSON FUNCTION TO DO ALL THE QUESTION."
print "\n///////////////////////////////////////////////////////////////////////////////\n\n\n"



# Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person với name là 'Person 1' cho đến 'Person 20', age của mỗi Person random từ 10 -> 90
class Person
  @@count=0
  @name=nil
  @age=nil
  def initialize(name, age)
    @@count+=1
    @name=name
    @age=age
  end
  def introduce
    print "My name is #@name. I'm #@age years old."
  end
  def self.total_count
    print "Total number of people is #@@count.\n"
  end
  def getter_name
    return @name
  end
  def getter_age
    return @age
  end
  def set_name(input_name)
    @name=input_name
  end
  def set_age(input_age)
    @age=input_age
  end
  def err
    begin
      raise "Error"
    rescue StandardError => e
      puts "Rescued: #{e.inspect}"
    end
  end
end
puts "********************Question-7******************************************"
# Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person với name là 'Person 1' cho đến 'Person 20', age của mỗi Person random từ 10 -> 90
people=Array.new()
20.times{|i| people.push(Person.new("Person #{i+1}",rand(10..90)))}
20.times{|i| puts people[i].introduce}

puts "********************Question-8******************************************"
# Với mảng 'people' lọc ra những Person có tuổi nhỏ hơn 18
people_q8 = people.select {|i| i.getter_age < 18}
people_q8.length.times{|i| puts people_q8[i].introduce}



puts "********************Question-9******************************************"
# Với mảng 'people' xóa ra những Person có tuổi nhỏ hơn 18

people = people.delete_if { |i| i.getter_age < 18 }
people.length.times{|i| puts people[i].introduce}


puts "********************Question-10******************************************"
#Sort mảng 'people' theo tuổi tăng dần.
people = people.sort_by {|i| i.getter_age}
people.length.times{|i| puts people[i].introduce}

puts "********************Question-11******************************************"
#Sort mảng 'people' theo tuổi giảm dần.
people = people.sort_by {|i| -i.getter_age}
people.length.times{|i| puts people[i].introduce}


puts "********************Question-12******************************************"
#Delete 1 phần tử ở vị trí xác định trong mảng 'people'
print "delete varibale at index 2 :"
puts "#{people.delete_at(2).introduce}"


puts "********************Question-13******************************************"
#Xem phần module enumerable của Ruby: https://ruby-doc.org/core-2.5.1/Enumerable.html (Array và Hash trong Ruby có include module này) để tìm ra Person lớn tuổi nhất, Person nhỏ tuổi nhất.
youngest_people = people.min_by {|i| i.getter_age}
oldest_people = people.max_by {|i| i.getter_age}
print "oldest people:"
oldest_people.introduce
print "\nyoungest people:"
youngest_people.introduce
print "\n"

puts "********************Question-14******************************************"
#Dùng CÁC vòng lặp trong Ruby và CÁC hàm (khả thi) của Array để tăng tuổi của từng Person trong mảng 'people' lên 1.
# method 1
people_q14=people
people_q14.each {|i| i.set_age(i.getter_age+1) }
people_q14.length.times{|n| puts people_q14[n].introduce}

# method 2
q14_method2=people.collect {|m| m.set_age(m.getter_age+1)}
puts "Method 2: age of person 1 #{q14_method2[0]}"
# method 3
q14_method2=people.map {|m| m.set_age(m.getter_age+1)}
puts "Method 3: age of person 1 #{q14_method2[0]}"
# method 4
q14_method2=people.select {|m| m.set_age(m.getter_age+1)}
puts "Method 4: age of person 1 #{q14_method2[0].getter_age}"
# method 5
q14_method2=people.take_while {|m| m.set_age(m.getter_age+1)}
puts "Method 5: age of person 1 #{q14_method2[0].getter_age}"
#method 6:
for x in people do
  x.set_age(x.getter_age+1)
end
puts "Method 5: age of person 1 #{people[0].getter_age}"
puts people.length


puts "********************Question-15******************************************"
#Không dùng vòng lặp (dùng CÁC hàm của Array) lấy ra tất cả các 'age' của các Person trong mảng 'person'
q15=people.collect {|m| m.getter_age}
puts "Method 1: age of all person #{q15}"
# method 2
q15=people.map {|m| m.getter_age}
# method 3
puts "Method 2: age of all person #{q15}"
q15=Array.new()
people.select {|i| q15 << i.getter_age}
puts "Method 3: age of all person #{q15}"
# method 4
q15=Array.new()
people.take_while {|i| q15 << i.getter_age}
puts "Method 4: age of all person #{q15}"
# method 5
q15=Array.new()
people.each {|i| q15 << i.getter_age}
puts "Method 5: age of all person #{q15}"



puts "********************Question-16******************************************"
#Tạo 1 mảng 'people_2' tương tự câu 7, nối mảng 'people_2' vào 'people'
people_2=Array.new()
20.times{|i| people_2.push(Person.new("Person #{i+21}",rand(10..90)))}
puts "Because some element are deleted in question 9 and 12"
puts people.length
puts people_2.length
people=people+people_2
puts people.length


puts "********************Question-16******************************************"
#Viết 1 instance method bất kì, raise Exception (với message bất kì) trong method đó, sau đó catch exception và in ra message của Exception đó.
people[1].err
