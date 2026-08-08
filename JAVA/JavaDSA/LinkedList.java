package JavaDSA;

public class LinkedListK {
    // Head node holds the start of the list
    private Node head;

    // Node class represents each element in the list
    private static class Node {
        int data;
        Node next;

        Node(int data) {
            this.data = data;
            this.next = null; // Automatically initialized to null
        }
    }

    // 1. Insert a node at the beginning
    public void insertAtHead(int data) {
        Node newNode = new Node(data);
        newNode.next = head;
        head = newNode;
    }

    // 2. Insert a node at the end (Tail)
    public void insertAtTail(int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
            return;
        }
        Node current = head;
        while (current.next != null) {
            current = current.next;
        }
        current.next = newNode;
    }

    // 3. Delete a node by its data value
    public void deleteByValue(int value) {
        if (head == null) return;

        // If the head itself holds the value to be deleted
        if (head.data == value) {
            head = head.next;
            return;
        }

        Node current = head;
        while (current.next != null && current.next.data != value) {
            current = current.next;
        }

        // If the value was found, bypass the target node
        if (current.next != null) {
            current.next = current.next.next;
        }
    }

    // 4. Print the complete list
    public void display() {
        Node current = head;
        while (current != null) {
            System.out.print(current.data + " -> ");
            current = current.next;
        }
        System.out.println("null");
    }

    // Execution entry point
    public static void main(String[] args) {
        LinkedList list = new LinkedList();

        list.insertAtTail(10);
        list.insertAtTail(20);
        list.insertAtHead(5);
        list.insertAtTail(30);

        System.out.print("Original List: ");
        list.display(); // Output: 5 -> 10 -> 20 -> 30 -> null

        list.deleteByValue(20);
        System.out.print("After Deleting 20: ");
        list.display(); // Output: 5 -> 10 -> 30 -> null
    }
}

