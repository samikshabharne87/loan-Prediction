#-----------Python List--------------

# list is an ordered sequence, may contains elements of different or similar types
# A list can contain a list or other data structures
# List is a collection which is ordered and changeable. Allows duplicate members
    
#Integer List
my_Integer_list =[1,2,3,4,5,6]
print(my_Integer_list)

# Type of list
my_Integer_list =[1,2,3,4,5,6]
type(my_Integer_list) # returns list



#Boolean List
my_Boolean_list = [True,False,True,False,False,False]
print(my_Boolean_list)


#list of lists
listOflists = [my_Integer_list,my_Boolean_list]
print(listOflists)
#list can contain different data types
list_diff_datatypes = ["abcde",1234,45.22,True]
print(list_diff_datatypes)




#------------Subsetting a list--------------

#use index
my_list = ["Sachin","Parag","Mahima","Tushar","Sumit","Shruti","Sagar"]
print(my_list[0])  # prints 1st element
print(my_list[5])  # prints 5th element



#use negative index
print(my_list[-1])  # prints 1st last element
print(my_list[-5])  # prints 5th last element
print(my_list[-3])

#list slicing-list[a:b] where a is inclusive and b is exclusive
print(my_list[1:2])  # prints 2nd element
print(my_list[3:8])  # prints 4th,5th,6th,7th element
print(my_list[4:6])
print(my_list[-1:-3]) # it not work on negative indexes

print(my_list[1:])  # prints all elements after 1st
print(my_list[:5])  # prints all elements till 5th
print(my_list[0:1])

#advance selection
list_1 = [1, 2, 3, 5, 4, 6, 7, 8, 5, 3, 2]
print(list_1[::3])#every 3rd element from start to end
print(list_1[1::4]) #every 4th element from 1st element till end
print(list_1[4::2])

#-------------Subsetting list of lists--------

x = [["a", "b", "c"],
     ["d", "e", "f"],
     ["g", "h", "i"]]
x[2][0]  #prints element of 3rd row and 1st column i.e g
x[2][:2]  #prints first two elements of 3rd row
x[:2]    # it prints the rows wise how to print it column wise


#-----------List manipulation------------

#Changelist elements 
my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
my_list[6] = "Sagarika"  # change single element
print(my_list)   # returns updated list
my_list[1]="samiksha"
print(my_list)

my_list[0:2] = ["Rohit","Parthiv"]  # change multiple element
my_list[-1:-2] = ["Rohit","Parthiv"]  # see the result its intresting
print(my_list)   # returns updated list

my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
my_list[0:2] = ["Rohit","Parthiv","Rahul"]  # change multiple element
my_list[-1:-2] = ["Rohit","Parthiv","Rahul"]  # see the result its intresting 

print(my_list)   # returns updated list


my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
my_list[0:2] = ["Rohit"]  # change multiple element
print(my_list)   # returns updated list



#Add list elements
my_list_extended = my_list + ["Bhavesh","Nitin"]
print(my_list_extended)


#Append method
my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
my_list.append("Swapnil") # by using append only one element we can add (disadvantages)
print(my_list)


#Remove list elements
my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
print(my_list)
del(my_list[3:5])
print(my_list)

#Important about list copying and referece

# a list name variable actually points to the reference to the elements 
# but doesnt really contains the elements
my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
my_list_new = my_list



print(my_list)
print(my_list_new)
my_list_new[1] = "Sandeep"
print(my_list)
print(my_list_new)


#for copying or creating a new list, use [:] or list(0 function
my_list = ["Sharma","Patel","Mahima","Tushar","Sumit","Shruti","Sagar"]
my_list_new = list(my_list)  # or my_list[:]
print(my_list)
print(my_list_new)
my_list_new[1] = "Mayur"
print(my_list)
print(my_list_new)



"""A set is an unordered collection of items. Every element is unique
 (no duplicates) and must be immutable (which cannot be changed).

However, the set itself is mutable. We can add or remove items from it.

Sets can be used to perform mathematical set operations like union, intersection, 
symmetric difference etc.
"""

list1 = ['A','B','B','C','C','E','N','N']
set1 = set(list1)
print(set1)
print(type(set1))

list2 = ['A','E','F','L','W','E']
set2 = set(list2)
print(set2)

print(set1)
print(set2)
print(set1.intersection(set2))
print(set1.union(set2))
print(set1.difference(set2))
print(set2.difference(set1))
print(set1.symmetric_difference(set2))

my_list[-3:-1] = ["Rohit","Parthiv"]
my_list