/*
Write a program to find the age of Harry if the birth year is 2000. Assume the Current Year is 2024
I/P => NONE
O/P => Harry's age in 2024 is ___
 */

package JavaBasics;
import java.util.*;

public class AgeCalculator {
    public static void main(String[] args) {
        int birthyear = 2000;
        int currentyear = 2024;
        int Age = currentyear - birthyear;

        System.out.println("Harry's age in 2024 is " + Age);
    }
}
