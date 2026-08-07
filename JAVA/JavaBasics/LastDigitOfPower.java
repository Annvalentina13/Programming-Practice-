/*
Given two integers a and b in the form of strings. Return the last digit of ab.

Examples:

Input: a = "3", b = "10"
Output: 9
Explanation: 310 = 59049. Last digit is 9.
Input: a = "6", b = "2"
Output: 6
Explanation: 62 = 36. Last digit is 6.
Constraints:
1 ≤ a.size(), b.size() ≤ 1000
a and b consist only of numeric digits ('0' - '9')
a and b do not contain any leading zeros, except when number itself is "0"
 */

package JavaBasics;

import java.util.Scanner;

public class LastDigitOfPower {

    public static int getLastDigit(String a, String b) {

        // If exponent is 0
        if (b.equals("0"))
            return 1;

        // Get the last digit of the base
        int lastDigit = a.charAt(a.length() - 1) - '0';

        // Find b % 4
        int mod = 0;
        for (int i = 0; i < b.length(); i++) {
            mod = (mod * 10 + (b.charAt(i) - '0')) % 4;
        }

        // If remainder is 0, use 4
        if (mod == 0)
            mod = 4;

        // Compute the last digit
        int result = 1;
        for (int i = 0; i < mod; i++) {
            result = (result * lastDigit) % 10;
        }

        return result;
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter base (a): ");
        String a = sc.next();

        System.out.print("Enter exponent (b): ");
        String b = sc.next();

        System.out.println("Last Digit = " + getLastDigit(a, b));

        sc.close();
    }
}