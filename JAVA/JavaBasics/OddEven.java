/*
Create a program to print odd and even numbers between 1 to the number entered by the user.
Hint =>
Get an integer input from the user, assign to a variable number and check for Natural Number
Using a for loop, iterate from 1 to the number
In each iteration of the loop, print the number is odd or even number
 */
package JavaBasics;
import java.util.*;

public class OddEven {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter a number: ");
        int n = scanner.nextInt();

        for(int i = 1; i <= n; i++){
            if(i % 2 == 0){
                System.out.println(i + "= Even");
            }
            else {
                System.out.println(i + "= Odd");
            }
        }
    }
}
