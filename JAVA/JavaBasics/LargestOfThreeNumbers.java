/*
Write a program to find the largest among three numbers using if-else statements.

Hint =>

Take user input for three integer values.
Compare the numbers using if-else conditions.
Print the largest number.
 */

package JavaBasics;
import java.util.*;

public class LargestOfThreeNumbers {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter number 1: ");
        int num1 = scanner.nextInt();

        System.out.println("Enter number 2: ");
        int num2 = scanner.nextInt();

        System.out.println("Enter number 3: ");
        int num3 = scanner.nextInt();

        if (num1 >= num2 && num1 >= num3) {
            System.out.println("Largest Number = " + num1);
        }
        else if (num2 >= num1 && num2 >= num3) {
            System.out.println("Largest Number = " + num2);
        }
        else {
            System.out.println("Largest Number = " + num3);
        }

    }
}
