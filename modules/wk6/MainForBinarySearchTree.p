from BinarySearchTree import BinarySearchTree
from Client import Client

# main program to demonstrate Binary Search Tree (BST) using Client objects
client1 = Client(345, "Jack", "Jones", "555-1111", "jjones@gmail.com")
client2 = Client(456, "Maria", "Jimenez", "555-2222", "mjimenez@hotmail.com")
client3 = Client(123, "Tyler", "Baker", "555-3333", "tbaker@ymail.com")
client4 = Client(234, "Jim", "Long", "555-4444", "jlong@outlook.com")
client5 = Client(199, "Charles", "Bracks", "555-5555", "cbracks@gmail.com")
client6 = Client(333, "Beth", "Wilson", "555-6666", "bwilson@gmail.com")
client7 = Client(792, "Clarence", "Washington", "555-7777", "cwashington@gmail.com")
client8 = Client(641, "Jackie", "Klien", "555-8888, jklien@gmail.com")
client9 = Client(821, "Zack", "Black", "555-9999", "zblack@outlook.com")
client10 = Client(947, "Aimee", "Bejune", "555-0000", "abejune@ymail.com")

# create a BST to store our data and add the client data
bst = BinarySearchTree()

bst.insert(client1)
bst.insert(client2)
bst.insert(client3)
bst.insert(client4)
bst.insert(client5)
bst.insert(client6)
bst.insert(client7)
bst.insert(client8)
bst.insert(client9)
bst.insert(client10)
# additional records for testing
bst.insert(Client(810,"a","b","c","d"))
bst.insert(Client(975,"e","f","g","h"))
bst.insert(Client(799,"i","j","k","l"))
bst.insert(Client(620,"m","n","o","p"))
bst.insert(Client(650,"q","r","s","t"))
bst.insert(Client(90,"u","v","w","x"))
bst.insert(Client(95,"y","z","a","b"))
bst.insert(Client(88,"c","d","e","f"))
bst.insert(Client(72,"c","d","e","f"))
bst.insert(Client(999,"c","d","e","f"))

print("\nIn Order:")
bst.displayInOrder()
print("\nPre-Order:")
bst.displayPreOrder()
print("\nPost-Order:")
bst.displayPostOrder()

# find a client based on the client id -- create object using just the key
id = 333
#id = int( input("Enter client id to find: ") )
client = bst.search( Client(id) )
if client is not None:
    print("Name:", client.get_first_name(), client.get_last_name())
    print("Phone:", client.get_phone())
else:
    print("Client not found.")
    
# remove and show the minimum record and the maximum record
print("\nHere is the minimum record:")
print(bst.remove_minimum())

print("\nHere is the maximum record:")
print(bst.remove_maximum())

#pause
input("Let's have some fun! Press the Enter key...")

print("\nShow the binary search tree structure.")
print("Notice that the __str__ method is automatically called.")
print( bst )

while True:    
    # test the remove function
    id = int( input("Enter client id to remove (0 to stop): ") )
    if id == 0:
        break
    bst.remove( Client(id) )
  
    print("\nShow the binary search tree structure after removing client.")
    print( bst )

bst.clear()
print("\nShow the binary search tree structure after clearing the tree.")
print( bst )
