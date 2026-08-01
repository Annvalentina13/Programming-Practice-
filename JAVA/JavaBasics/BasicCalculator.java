/*
Write a program to create a basic calculator that can perform addition, subtraction, multiplication, and division. The program should ask for two numbers (floating point) and perform all the operations
Hint =>
Create a variable number1 and number 2 and take user inputs.
Perform Arithmetic Operations of addition, subtraction, multiplication and division and assign the result to a variable and finally print the result
I/P => number1, number2
O/P => The addition, subtraction, multiplication and division value of 2 numbers ___ and ___ is ___, ____, ____, and ___

 */

package JavaBasics;
import java.util.*;

public class BasicCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter number 1: ");
        Double num1 = scanner.nextDouble();

        System.out.println("Enter number 2: ");
        Double num2 = scanner.nextDouble();

        Double Addition = num1 + num2;
        Double Subtraction = num1 + num2;
        Double Multiplication = num1 * num2;
        Double Division = num1 / num2;

        System.out.println("The addition, subtraction, multiplication and division value of 2 numbers " + num1 + "and " + num2 + "is" + Addition + "," + Subtraction + "," + Multiplication +"and " + Division);
    }
}
