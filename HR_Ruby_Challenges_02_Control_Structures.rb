# HackerRank - Ruby - Challenges - II - Control Structures


# 1. Control Structures - Ruby Control Structures - Each
#
# Ruby offers control structures that let you iterate through its collections. One such control structure is each.
#
# As you already know, HackerRank conducts many contests, and for every user who participates in a contest we update their score once the contest ends. You will be given a method called scoring with an array passed as an argument. Elements of the array are of the class User.
#
# User class has a method update_score.
#
# Your task is to iterate through each of the elements in the array using each and call the method update_score on every element.
#
# Hint
#
array.each do |user|
    # call update_score on `user` here
end
#
# Solution
#

def scoring(array)
    array.each do |user|
        user.update_score # iterate through each of the element in array using *each* and call update_score on it
    end
end


# 2. Control Structures - Ruby Control Structures - Unless
#
# You've updated the score of every HackerRank user who participated in a contest. Sometimes, HackerRank admins also participate in a given contest but care is taken to ensure that their submissions do not get any score and their score is not updated.
#
# Like the previous challenge, you are given a method scoring with an array passed as an argument. Each element of the array is of class User.
#
# User has two public methods, is_admin? and update_score. Your task in this challenge is to use the control structure unless and update all elements of the array who are not admins.
#
# Hint
#
unless user.is_admin?
    user.update_score
end
#
# or
#
user.update_score unless user.is_admin?
#
# The above code is a Ruby one liner.
#
# Explanation
#
# unless is the logical equivalent of if not 
#
# Solution
#

def scoring(array)
    array.each do |user|
        user.update_score unless user.is_admin? # update_score of every user in the array unless the user is admin
    end
end


# 3. Control Structures - Ruby Control Structures - Infinite Loop
#
# This is a wonderful exercise which explains the concept of infinite loops.
#
# "A hacker practices on HackerRank until getting to a rating of O(1) read as (Oh-one)"
#
# An infinite loop in Ruby is of the form
#
loop do
end
#
# Use an infinite loop and call the method coder.practice within it and break if coder.oh_one? is true.
#
# break if conditions in Ruby are of the form
#
if <condition>
    break
end
#
# or a one-liner
#
break if <condition>
#
# Solution
#

loop do
    coder.practice
    if coder.oh_one?
        break
    end
end


# 4. Control Structures - Ruby Control Structures - Until
#
# This challenge has a beautiful one-liner answer.
#
# "A hacker practices on HackerRank until getting to a rating of O(1) read as (Oh-one)"
#
# Call the method coder.practice until coder.oh_one? becomes true.
#
# Use the until control structure.
#
# until is the logical equivalent of while not.
#
# Hint
#
while not <condition>
    <code>
end
#
# or
#
until <condition>
    <code>
end
#
# or the beautiful one-liner
#
<code> until <condition>  
#
# Solution
#

while not coder.oh_one?
    coder.practice
end


# 5. Control Structures - Ruby Control Structures - Case (Bonus Question)
#
# This is a bonus question. Feel free to skip to the next challenge.
#
# HackerRank is written in RoR (https://rubyonrails.org/) and we have various classes defined in it. Some of them are
#
#  1.  Hacker
#  2.  Submission
#  3.  TestCase
#  4.  Contest
# etc.
#
# You have been given a function where an object which may or may not be of the above mentioned type is sent as an argument. You have to use the case control structure in Ruby to identify the class to which the object belongs and print the following output:
#
#  *  if Hacker, output "It's a Hacker!"
#  *  if Submission, output "It's a Submission!"
#  *  if TestCase, output "It's a TestCase!"
#  *  if Contest, output "It's a Contest!"
#  *  for any other object, output "It's an unknown model"
#
# Note
#
#  *  use case (switch statement of Ruby)
#  *  use puts for printing
#  *  Ruby Docs on case (https://ruby-doc.org/docs/keywords/1.9/Object.html#method-i-case)
#
# Solution
#

def identify_class(obj)
    # write your case control structure here
    case obj
    when Hacker
        puts "It's a Hacker!"
    when Submission
        puts "It's a Submission!"
    when TestCase
        puts "It's a TestCase!"
    when Contest
        puts "It's a Contest!"
    else
        puts "It's an unknown model"
    end
end

