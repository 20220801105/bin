#sll
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None


class SinglyLinkedList:
    def __init__(self):
        self.head = None

    # Insert at first
    def insert_first(self, data):
        new = Node(data)
        new.next = self.head
        self.head = new

    # Insert at last
    def insert_last(self, data):
        new = Node(data)
        if self.head is None:
            self.head = new
            return
        temp = self.head
        while temp.next:
            temp = temp.next
        temp.next = new

    # Insert at middle (after position)
    def insert_middle(self, data, pos):
        new = Node(data)
        temp = self.head
        for _ in range(pos - 1):
            temp = temp.next
        new.next = temp.next
        temp.next = new

    # Delete first
    def delete_first(self):
        if self.head:
            self.head = self.head.next

    # Delete last
    def delete_last(self):
        if self.head is None:
            return
        if self.head.next is None:
            self.head = None
            return
        temp = self.head
        while temp.next.next:
            temp = temp.next
        temp.next = None

    # Delete middle
    def delete_middle(self, pos):
        temp = self.head
        for _ in range(pos - 1):
            temp = temp.next
        temp.next = temp.next.next

    # Display
    def display(self):
        temp = self.head
        while temp:
            print(temp.data, end=" -> ")
            temp = temp.next
        print("None")


# Demo
s = SinglyLinkedList()
s.insert_first(10)
s.insert_last(20)
s.insert_middle(15, 1)
s.display()
s.delete_middle(1)
s.display()


#cll
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None


class CircularLinkedList:
    def __init__(self):
        self.head = None

    # Insert at first
    def insert_first(self, data):
        new = Node(data)
        if self.head is None:
            new.next = new
            self.head = new
            return

        temp = self.head
        while temp.next != self.head:
            temp = temp.next

        new.next = self.head
        temp.next = new
        self.head = new

    # Insert at last
    def insert_last(self, data):
        new = Node(data)
        if self.head is None:
            new.next = new
            self.head = new
            return

        temp = self.head
        while temp.next != self.head:
            temp = temp.next

        temp.next = new
        new.next = self.head

    # Insert at middle (after position)
    def insert_middle(self, data, pos):
        new = Node(data)
        temp = self.head
        for _ in range(pos):
            temp = temp.next
        new.next = temp.next
        temp.next = new

    # Delete first
    def delete_first(self):
        if self.head is None:
            return

        temp = self.head
        while temp.next != self.head:
            temp = temp.next

        temp.next = self.head.next
        self.head = self.head.next

    # Delete last
    def delete_last(self):
        temp = self.head
        while temp.next.next != self.head:
            temp = temp.next
        temp.next = self.head

    # Delete middle
    def delete_middle(self, pos):
        temp = self.head
        for _ in range(pos - 1):
            temp = temp.next
        temp.next = temp.next.next

    # Display
    def display(self):
        if self.head is None:
            return
        temp = self.head
        while True:
            print(temp.data, end=" -> ")
            temp = temp.next
            if temp == self.head:
                break
        print("(HEAD)")


# Demo
c = CircularLinkedList()
c.insert_first(10)
c.insert_last(20)
c.insert_middle(15, 1)
c.display()
c.delete_middle(1)
c.display()

#dll
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None


class DoublyLinkedList:
    def __init__(self):
        self.head = None

    # Insert at first
    def insert_first(self, data):
        new = Node(data)
        if self.head:
            self.head.prev = new
            new.next = self.head
        self.head = new

    # Insert at last
    def insert_last(self, data):
        new = Node(data)
        if self.head is None:
            self.head = new
            return
        temp = self.head
        while temp.next:
            temp = temp.next
        temp.next = new
        new.prev = temp

    # Insert at middle (after position)
    def insert_middle(self, data, pos):
        new = Node(data)
        temp = self.head
        for _ in range(pos - 1):
            temp = temp.next
        new.next = temp.next
        new.prev = temp
        temp.next.prev = new
        temp.next = new

    # Delete first
    def delete_first(self):
        if self.head:
            self.head = self.head.next
            if self.head:
                self.head.prev = None

    # Delete last
    def delete_last(self):
        temp = self.head
        while temp.next:
            temp = temp.next
        temp.prev.next = None

    # Delete middle
    def delete_middle(self, pos):
        temp = self.head
        for _ in range(pos):
            temp = temp.next
        temp.prev.next = temp.next
        if temp.next:
            temp.next.prev = temp.prev

    # Display
    def display(self):
        temp = self.head
        while temp:
            print(temp.data, end=" <-> ")
            temp = temp.next
        print("None")


# Demo
d = DoublyLinkedList()
d.insert_first(10)
d.insert_last(20)
d.insert_middle(15, 1)
d.display()
d.delete_middle(1)
d.display()
