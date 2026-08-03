/*
Write a program to create a Student class and display the complete details of the student.

Hint =>

Take user input using the Scanner next() and nextInt() methods to get the student's name, roll number, age, and department.
Create a Student class with instance variables name, rollNumber, age, and department.
Create a parameterized constructor to initialize all instance variables.
Write a method displayDetails() to display the student's information.
Create a Student object in the main method.
Call the display method and display all the student details.
 */

package JavaOOPS;

import java.util.Scanner;

class Student {

    String name;
    int rollNumber;
    int age;
    String department;

    Student(String name, int rollNumber, int age, String department) {
        this.name = name;
        this.rollNumber = rollNumber;
        this.age = age;
        this.department = department;
    }

    void displayDetails() {
        System.out.println("\n----- Student Details -----");
        System.out.println("Name       : " + name);
        System.out.println("Roll Number: " + rollNumber);
        System.out.println("Age        : " + age);
        System.out.println("Department : " + department);
    }
}

public class StudentDetails {

    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter Student Name: ");
        String name = scanner.next();

        System.out.print("Enter Roll Number: ");
        int rollNumber = scanner.nextInt();

        System.out.print("Enter Age: ");
        int age = scanner.nextInt();

        System.out.print("Enter Department: ");
        String department = scanner.next();

        Student student = new Student(name, rollNumber, age, department);

        student.displayDetails();

        scanner.close();
    }
}