/**
 * This is the VariablesDatatypesOperators class, part of the Developer Kickstart Week 1 curriculum 
 * at Cloud Code Academy. This class serves as an introduction to the basic elements of Apex programming 
 * including variables, data types, and operators.
 * 
 * This class is an essential tool for beginner developers who are just starting their journey in Salesforce 
 * development. It covers all the foundational elements necessary to understand and write Apex code effectively.
 * 
 * Topics covered in this class include:
 * - Understanding different data types in Apex such as Integer, Decimal, Double, String, Boolean, etc.
 * - Understanding how to declare and use variables in Apex.
 * - Understanding how to use various types of operators in Apex including arithmetic operators, 
 *   comparison operators, logical operators, and more.
 *
 * Users of this class can expect to gain a strong foundation in Apex programming and be prepared for 
 * more advanced topics in Salesforce development.
 * 
 * @author Ulric Winesburgh
 * @version 1.0
 */

 public with sharing class VariablesDatatypesOperators {
    /**
     * Performs addition of two numbers.
     * If either of the numbers is null, return null.
     * Example: addition(1, 2) should return 3
     * @param a The first number.
     * @param b The second number.
     * @return The sum of the two numbers, or null if either number is null.
     */
    public static Integer addition(Integer a, Integer b) {

        
        if (a == null) {return null; //when 'a' equals null
            
        }
        if (b == null) {return null; //when 'b' equals null
        
        }
        Integer sum = a + b;
    
        return sum; //sum of a + b       
        
 }

    /**
     * Performs subtraction of two numbers.
     * Example: subtraction(1, 2) should return -1
     * @param a The first number.
     * @param b The second number.
     * @return The difference between the two numbers.
     */
    public static Integer subtraction(Integer a, Integer b) {
        Integer difference = a - b;
        return difference; // difference of a - b
        
    

    }

    /**
     * Performs multiplication of two numbers.
     * Example: multiplication(2, 3) should return 6
     * @param a The first number.
     * @param b The second number.
     * @return The product of the two numbers.
     */
    public static Integer multiplication(Integer a, Integer b) {
       
        Integer product = a * b;
        return product; // product of a * b
        
    }

    /**
     * Performs division of two numbers.
     * If the second number is zero, return 0 to avoid division by zero error.
     * Example: division(6, 3) should return 2
     * @param a The numerator.
     * @param b The denominator.
     * @return The quotient of the division, or 0 if the denominator is zero.
     */
    public static Decimal division(Integer a, Integer b) {
        if (a == 0) {return 0; //when 'a' equals 0
            
        }
        if ( b == 0) {return 0; //when 'b' equals 0
        
    }
        Decimal quotition = a / b;
        return quotition; // quotition of a / b
    }

    /**
     * Checks if a number is even.
     * Example: isEven(2) should return true
     * @param num The number to check.
     * @return True if the number is even, False otherwise.
     */
    public static Boolean isEven(Integer num) {
      Boolean isEven =(math.mod(num, 2) == 0);
     
       
    return isEven ;
    }
        
       
        
    

    /**
     * Checks if a number is positive.
     * Example: isPositive(2) should return true
     * @param num The number to check.
     * @return True if the number is positive, False otherwise.
     */
    public static Boolean isPositive(Integer num) {
        Boolean isPositive = num > 0;
        return isPositive; // Replace null with the variable you used to store the result
    }

    /**
     * Concatenates two strings.
     * Example: concatenateStrings('Hello', 'World') should return 'HelloWorld'
     * @param str1 The first string.
     * @param str2 The second string.
     * @return The concatenated string.
     */
    public static String concatenateStrings(String str1, String str2) {
      
        return str1 + str2; // 'Hello World'

    }

    /**
     * Combines three strings into one.
     * The goal is to concatenate firstPart, secondPart, and thirdPart to make a complete sentence.
     * Example: combineStrings('Hello', 'World', '!') should return '#Hello CodeWorld!!'
     * @param firstPart The first part of the sentence.
     * @param secondPart The second part of the sentence.
     * @param thirdPart The third part of the sentence.
     * @return The complete sentence as a single String.
     */
    public static String combineStrings(String firstPart, String secondPart, String thirdPart) {
      
      String result = '#'+ firstPart + ' ' + 'Code' + secondPart + thirdPart + '!';
    return result;    
    }


    /**
     * Checks if a date is in the past.
     * Example: isDateInPast(Date.newInstance(2019, 1, 1)) should return true
     * @param dt The date to check.
     * @return True if the date is in the past, False otherwise.
     */
    public static Boolean isDateInPast(Date dt) {
        Boolean isDateInPast;
        if (dt<Date.today()) {
         isDateInPast = true;
          }  else {
                isDateInPast = false;
            }
            return isDateInPast; 
        }


    /**
     * Checks if a date is today or in the future.
     * Example: isDateTodayOrFuture(Date.newInstance(2019, 1, 1)) should return false
     * @param dt The date to check.
     * @return True if the date is today or in the future, False otherwise.
     */
    public static Boolean isDateTodayOrFuture(Date dt) {
        Boolean TodayOrFutureDate;
        if (dt>=Date.today()) {
            TodayOrFutureDate = true;}
            else {
                TodayOrFutureDate = false;
            }
            return TodayorFutureDate;
        }
    

    /**
     * Converts the number of minutes to milliseconds.
     * The conversion factor from minutes to milliseconds is a constant.
     * Example: convertMinutesToMilliseconds(1) should return 60000
     * @param minutes The number of minutes.
     * @return The number of milliseconds equivalent to the given number of minutes.
     */
    public static Integer convertMinutesToMilliseconds(Integer minutes) {
        Integer MILLISECONDS_PER_MINUTE = 60000 ; // Make this value a constant
        Integer milliseconds = minutes * MILLISECONDS_PER_MINUTE;

        Integer conversionMinutesToMilli = milliseconds;
        return conversionMinutesToMilli; // Replace null with the variable you used to store the result
    }    

    /**
     * Calculates the average of three numbers.
     * Example: averageOfThreeNumbers(1, 2, 3) should return 2
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @return The average of the three numbers.
     */
    public static Double averageOfThreeNumbers(Integer a, Integer b, Integer c) {
        Double average = (a + b + c )/ 3;
        return average; // Replace null with the variable you used to store the result
    }

    /**
     * Adjusts the order of operations in an arithmetic expression to produce a desired result.
     * In this case, parentheses are added to the expression (5 + 7) * 3 to ensure that addition
     * is performed before multiplication.
     * Example: adjustOrderOfOperations1(5, 7, 3) should return 36
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @return The result of the adjusted arithmetic expression.
     */
    public static Integer adjustOrderOfOperations1(Integer a, Integer b, Integer c) {
        // Add parentheses around the addition operation so that it is performed before multiplication
        Integer result = (a + b )* c;

        // Return the result
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Modifies the expression to adhere to PEMDAS rules in order to change its result.
     * @return The result of the expression after modifications.
     */
    public static Integer adjustOrderOfOperations2() {
        // Add parentheses in the below expression to change the result.
        // The result of the expression as it is right now is 35. 
        // You should add parentheses so that the result of the expression becomes 43.
        Integer answer = 48 - (15 + 5) * 2;
        // Return the modified result.
        return answer; // Replace null with the variable you used to store the result
    }

    /**
     * Adjusts the order of operations in an arithmetic expression to produce a desired result.
     * In this case, parentheses are added to the expression (a * b - c) / d + e to ensure that 
     * multiplication and subtraction are performed before division, which in turn is performed 
     * before addition.
     * Example: adjustOrderOfOperations3(1, 2, 3, 4, 5) should return 4.5
     * @param a The first number.
     * @param b The second number.
     * @param c The third number.
     * @param d The fourth number.
     * @param e The fifth number.
     * @return The result of the adjusted arithmetic expression.
     */
    public static Double complexOrderOfOperations(Integer a, Integer b, Integer c, Integer d, Integer e) {
        // Add parentheses around the multiplication and subtraction operations so that they are performed before division and addition
        Double result = ((a * b) - c) / (Double) d + e;
        return result;

        
    }

    /**
     * Converts the temperature from Fahrenheit to Celsius.
     * The formula to convert Fahrenheit to Celsius is (F - 32) * 5/9.
     * @param fahrenheit The temperature in Fahrenheit.
     * @return The temperature in Celsius equivalent to the given Fahrenheit temperature.
     */
    public static Double convertFahrenheitToCelsius(Double fahrenheit) {
        final Double SUBTRACT_FACTOR = 32.0;
        final Double MULTIPLY_FACTOR = 5.0;
        final Double DIVIDE_FACTOR = 9.0;
    Double result = (fahrenheit - SUBTRACT_FACTOR) * MULTIPLY_FACTOR / DIVIDE_FACTOR;
        return result; // Replace null with the variable you used to store the result
    }

    

    /**
     * Performs division and returns the result as a casted Integer.
     * It should cast the result to an Integer.
     * @param a The numerator.
     * @param b The denominator.
     * @return The quotient as a rounded Integer.
     */
    public static Integer performDivisionAndCast(Double a, Double b) {
        // Perform the division and round off the result.
        Double divisionResult = a / b;
        
       

        // Write the code for type casting the divisionResult to an Integer
        Integer roundedResult = (Integer)divisionResult;
        return roundedResult; // Replace null with the variable you used to store the result
    }

    /**
     * Calculate the weekly and monthly paycheck based on hourly rate and number of hours.
     * Weekly Paycheck is calculated by the formula: rate multiplied by hours.
     * Example: calculateWeeklyPaycheck(10.0, 40.0) should return 400.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the weekly paycheck.
     */
    public static Decimal calculateWeeklyPaycheck(Decimal hourlyRate, Double numberOfHours) {
        if (hourlyRate == 0) {return 0;
            
        }
        if (numberOfHours == 0) {return 0;
            
        }
         Decimal weeklyPaycheck = hourlyRate * numberOfHours;
       
        // Calculate the weekly paycheck using the formula: rate multiplied by hours
        return weeklyPaycheck; // Replace null with the variable you used to store the result
    }

    /**
     * Calculate the weekly and monthly paycheck based on hourly rate and number of hours.
     * Weekly Paycheck is calculated by the formula: rate multiplied by hours.
     * Monthly Paycheck is calculated by the formula: weekly paycheck multiplied by 4.
     * Example: calculateMonthlyPaycheck(10.0, 40.0) should return 1600.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the monthly paycheck.
     */
    public static Decimal calculateMonthlyPaycheck(Decimal hourlyRate, Double numberOfHours) {
        if (hourlyRate == 0) {return 0;
            
        }
        if (numberOfHours == 0) {return 0;
            
        }
        Decimal monthlyPaycheck = (hourlyRate * numberOfHours) * 4;

        return monthlyPaycheck; // Replace null with the variable you used to store the result
    }

    /**
     * Calculates the total cost based on price per unit, number of units, and a sales tax rate.
     * Total cost is calculated by the formula: (pricePerUnit * numberOfUnits) * (1 + salesTaxRate).
     * Example: calculateTotalCost(1.0, 2, 0.05) should return 2.1
     * @param pricePerUnit The price per unit of the item.
     * @param numberOfUnits The number of units purchased.
     * @param salesTaxRate The sales tax rate as a decimal (e.g., 0.05 for 5% tax).
     * @return The total cost after applying the sales tax.
     */
    public static Decimal calculateTotalCost(Decimal pricePerUnit, Integer numberOfUnits, Decimal salesTaxRate) {
        Decimal totalCost = (pricePerUnit * numberOfUnits) * (1 + salesTaxRate);
        return totalCost; // Replace null with the variable you used to store the result
    }

}