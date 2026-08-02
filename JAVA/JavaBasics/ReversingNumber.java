/*
Write a program to reverse a given integer number.

Hint =>

Take user input using the Scanner nextInt() method.
Use a while loop to extract each digit using the modulus (%) operator.
Construct the reversed number by multiplying the current reverse by 10 and adding the extracted digit.
Remove the last digit from the original number using integer division (/).
Display the reversed number.
*/

package JavaBasics;
import java.util.*;

public class ReversingNumber {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the number: ");
        int number = scanner.nextInt();

        int reverse = 0;

        while(number > 0){
            int digit = number % 10;
            reverse = reverse * 10 + digit;
            number = number / 10;

        }

        System.out.println("Reversed Number: " + reverse);
    }
}
