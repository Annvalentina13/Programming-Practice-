/*
Write a program to create a basic calculator that can perform addition, subtraction, multiplication, and division. The program should ask for two numbers (floating point) and perform all the operations
Hint => 
Create a variable number1 and number 2 and take user inputs.
Perform Arithmetic Operations of addition, subtraction, multiplication and division and assign the result to a variable and finally print the result
I/P => number1, number2
O/P => The addition, subtraction, multiplication and division value of 2 numbers ___ and ___ is ___, ____, ____, and ___
*/

import java.util.Scanner;

class basicCalculator
{
    public static void main (String[] args) throws java.lang.Exception
    {
        Scanner scanner = new Scanner(System.in);
        
        // 1. Read input as floating-point numbers (double)
        double num1 = scanner.nextDouble();
        double num2 = scanner.nextDouble();
        
        // 2. Perform arithmetic operations
        double addition = num1 + num2;
        double subtraction = num1 - num2;
        double multiplication = num1 * num2;
        double division = num1 / num2;
        
        
        System.out.println("The addition, subtraction, multiplication and division value of 2 numbers " 
                           + num1 + " and " + num2 + " is " 
                           + addition + ", " + subtraction + ", " + multiplication + ", and " + division);
        
        scanner.close();
    }
}