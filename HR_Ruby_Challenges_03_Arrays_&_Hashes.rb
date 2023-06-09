# HackerRank - Ruby - Challenges - III - Arrays & Hashes


# 1. Arrays & Hashes - Ruby Array - Initialization
#
# One of the most commonly used data structures in Ruby is a Ruby Array, and below we see various methods of initializing a ruby array.
#
# Your task is to initialize three different variables as explained below.
#
#  *  Initialize an empty array with the variable name array
#
# Hint
#
array = Array.new
#
# or
#
array = []
#
#  *  Initialize an array with exactly one nil element in it with the variable name array_1
#
# Hint
#
array_1 = Array.new(1)
#
# or
#
array_1 = [nil]
#
#  *  Initialize an array with exactly two elements with value 10 in it using the variable name array_2.
#
# Hint
#
array_2 = Array.new(2, 10)
#
# or
#
array_2 = [10, 10]
#
# Solution
#

# Initialize 3 variables here as explained in the problem statement
array = []
array_1 = [nil]
array_2 = [10, 10]


# 2. Arrays & Hashes - Ruby Array - Index, Part 1
#
# Array collections offer various ways to access their elements.
#
# The positions are 0 indexed. Objects of the array can be accessed using the [] method which may take various arguments, as explained below.
#
arr = [9, 5, 1, 2, 3, 4, 0, -1]
#
#  *  A number which is the position of element
#
>>arr[4]
  => 3
#
# or
#
>>arr.at(4)
  => 3
#
#  *  A range indicating the start and the end position
#
>>arr[1..3] # .. indicates both indices are inclusive.
  => [5,1,2]
>>arr[1...3] # ... indicates the last index is excluded.
  => [5,1]
#
#  *  Start index and the length of the range
#
>>arr[1,4]
  => [5, 1, 2, 3]
#
# For this challenge, your task is to complete the functions using syntax as explained above.
#
# Solution
#

def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    arr[start_pos .. end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    arr[start_pos ... end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    arr[start_pos, length]
end


# 3. Arrays & Hashes - Ruby Array - Index, Part 2
#
# Here are some other ways to access array objects in Ruby.
#
# To access the elements from the end of the list, we can use negative indices.
#
# For the array,
#
arr = [9, 5, 1, 2, 3, 4, 0, -1]
#
 > arr[-1]
 => -1
#
#  *  The first element of the array can be accessed using
#
 > arr.first
 => 9
#
#  *  The last element of the array can be accessed using
#
 > arr.last
 => -1
#
#  *  The first n elements of the array can be accessed using
#
 arr.take(3)
 => [9, 5, 1]
#
#  *  Everything but the first n elements of the array can be accessed using
#
 arr.drop(3)
 => [2, 3, 4, 0, -1]
#
# In this challenge, you have to use the syntax as explained above and complete the functions accordingly.
#
# Solution
#

def neg_pos(arr, index)
    # return the element of the array at the position `index` from the end of the list
    arr[-index]
end

def first_element(arr)
    # return the first element of the array
    arr.first
end

def last_element(arr)
    # return the last element of the array
    arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end


# 4. Arrays & Hashes - Ruby Array - Addition
#
# Arrays provide a variety of methods that allow to add elements to them.
#
#  *  push allows one to add an element to the end of the list.
#
 >x = [1,2]
 >x.push(3)
 => [1,2,3]
#
#  *  insert allows one to add one or more elements starting from a given index (shifting elements after the given index in the process).
#
 >x = [1,2]
 >x.insert(1, 5, 6, 7)
 => [1, 5, 6, 7, 2]
#
#  *  unshift allows one or more elements to be added at the beginning of the list.
#
 >x = [1,2,3]
 >x.unshift(10, 20, 30)
 => [10, 20, 30, 1, 2, 3]
#
# In this challenge, your task is to complete three functions that take in the array arr and
#
#  1.  Add an element to the end of the list
#  2.  Add an element to the beginning of the list
#  3.  Add an element after a given index (position)
#  4.  Add more than one element after a given index (position)
#
# Solution
#

def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 0, 1)
end


# 5. Arrays & Hashes - Ruby Array - Deletion
#
# The array class has various methods of removing elements from the array.
#
# Let's look at the array
#
arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]
#
#  *  Delete an element from the end of the array
#
 > arr.pop
 => 3
#
#  *  Delete an element from the beginning of the array
#
 > arr.shift
 => 5
#
#  *  Delete an element at a given position
#
 > arr.delete_at(2)
 => 4
#
#  *  Delete all occurrences of a given element
#
 > arr.delete(5)
 => 5
 > arr
 => [6, 3, 1, 2, 4, 3, 3]
#
# Your task is to complete the functions below using syntax as explained above.
#
# Solution
#

def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop
end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift
end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)
end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)
end


# 6. Arrays & Hashes - Ruby Array - Selection
#
# The array class also allows to select and return a subset of an array based on some criteria defined in a block (a block is a group of code within {} that accepts a variable and returns a value).
#
#  *  Selecting elements that satisfy a given criteria
#  *  Rejecting elements that satisfy a given criteria
#
 > arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]
 > arr.select {|a| a > 2}
 => [3, 4, 3, 4, 5, 6]
 > arr.reject {|a| a > 2}
 => [2, 1, 2]
 > arr
 => [3, 4, 2, 1, 2, 3, 4, 5, 6]
 > arr.drop_while {|a| a > 1} # removes elements till the block returns false for the first time
 => [1, 2, 3, 4, 5, 6]
#
# As you can see, the original array remains unchanged. This is called Non-Destructive Selection.
# For destructive behavior (change to the original array), Ruby provides the following methods:
#
 > arr = [3, 4, 2, 1, 2, 3, 4, 5, 6]  
 > arr.delete_if {|a| a < 2}
  => [3, 4, 2, 2, 3, 4, 5, 6]  
 > arr.keep_if {|a| a < 4}  
 => [3, 2, 2, 3]
#
# Note
#
#  *  An element in a block is selected, rejected, deleted, or kept based on the True or False value generated by that block on that element.
#  *  For a destructive behavior for select and reject or any method that one wants to enforce a change in the original array, a ! can be used at the end of the method i.e., select! and reject!
#
# In this challenge, you have to complete the functions below using syntax as explained above.
#
# Solution
#

def select_arr(arr)
    # select and return all odd numbers from the Array variable `arr`
    arr.select {|a| (a%2 != 0)} 
end

def reject_arr(arr)
    # reject all elements which are divisible by 3
    arr.delete_if {|a| (a%3 == 0)} 
end

def delete_arr(arr)
    # delete all negative elements
    arr.delete_if {|a| (a < 0)}
end

def keep_arr(arr)
    # keep all non negative elements ( >= 0)
    arr.keep_if {|a| (a >= 0)}
end


# 7. Arrays & Hashes - Ruby Hash - Initialization
#
# Hashes, also called associative arrays, are dictionary-like data structures which are similar to arrays. Instead of using integers to index an object, however, hashes use any object as its index.
#
# In this challenge, your task is to create three different Hash collections as explained below.
#
#  *  Initialize an empty Hash with the variable name empty_hash
#
# Hint
#
empty_hash = Hash.new
#
#  *  Initialize an empty Hash with the variable name default_hash and the default value of every key set to 1.
#
# Hint
#
default_hash = Hash.new(1)
#
# or
#
default_hash = Hash.new
default_hash.default = 1
#
#  *  Initialize a hash with the variable name hackerrank and having the key-value pairs
#
 "simmy", 100
 "vivmbbs",200
#
# Hint
#
hackerrank = {"simmy" => 100, "vivmbbs" => 200}
#
# Hash can be defined using a new method
#
hackerrank = Hash.new
hackerrank["simmy"] = 100
hackerrank["vivmbbs"] = 200
#
# Solution
#

# Initialize 3 variables here as explained in the problem statement
empty_hash = Hash.new
default_hash = Hash.new(1)
hackerrank = {"simmy" => 100, "vivmbbs" => 200}


# 8. Arrays & Hashes - Ruby Hash - Each
#
# You've seen the control structure (https://www.hackerrank.com/challenges/ruby-tutorial-each/problem) each used on an array. Similarly, it is available for the Hash collection, as well.
#
# On Hash, it works in two ways.
#
# Consider the example
#
user = {"viv" : 10, "simmy" : 20, "sp2hari" : 30}
#
# Using each, each element can be iterated as
#
user.each do |key, value|
    # some code on individual key, value
end
#
# or
#
user.each do |arr|
    # here arr[0] is the key and arr[1] is the value
end
#
# Your task is to use each and iterate through the collection and print the key-value pair in separate lines.
#
# Hint
#
puts key
puts value
#
# Solution
#

def iter_hash(hash)
    # your code here
    hash.each do |key, value|
        puts key
        puts value
    end
end


# 9. Arrays & Hashes - Ruby Hash - Addition, Deletion, Selection
#
# In this challenge, we will show you ways in which we can add key-value pairs to Hash objects, delete keys from them, and retain them based on a logic.
#
# Consider the following Hash object:
#
h = Hash.new
h.default = 0
#
#  *  A new key-value pair can be added using or the store method
#
h[key] = value
#
# or
#
h.store(key, value)
#
#  *  An existing key can be deleted using the delete method
#
h.delete(key)
#
#  *  For destructive selection and deletion, we can use keep_if and delete_if as seen in Array-Selection
#
 > h = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
 => {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
 > h.keep_if {|key, value| key % 2 == 0} # or h.delete_if {|key, value| key % 2 != 0}
 => {2 => 4, 4 => 16}
# Note
#
# For non-destructive selection or rejection, we can use select, reject, and drop_while similar to Array-Selection (https://www.hackerrank.com/challenges/ruby-array-selection/problem)
#
# In this challenge, a hash object called hackerrank is already created. You have to add
#
#  *  A key-value pair [543121, 100] to the hackerrank object using store
#  *  Retain all key-value pairs where keys are Integers ( clue : is_a? Integer )
#  *  Delete all key-value pairs where keys are even-valued.
#
# Solution
#

# Enter your code here.
hackerrank.store(543121, 100)
hackerrank.keep_if {|key, value| key.is_a? Integer}
hackerrank.delete_if {|key, value| key.even?}

