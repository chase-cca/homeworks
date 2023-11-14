/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Kristie Brown
 */

public with sharing class ClassesObjectsMethods {
    /**
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        List<String> practiceStringMethods = new List<String>();
        // Initialize a String with 'Hello, Salesforce!'
        String practiceString = 'Hello, Salesforce!';
        // Get the length of the String
        String lengStr = string.valueOf(practiceString.length());  
        // Get a substring of the String of the first 5 characters
        String strchar = (practiceString.substring(0, 5));
        // Convert the String to lower case
        String lowerStr = practiceString.toLowerCase();
        // Return the list with the string data
        // In the first position add the string length
        // In the second position add the substring
        // In the third position add the string in lower case
        practiceStringMethods.add(lengStr);
        //practiceStringMethods.add(practiceString);
        practiceStringMethods.add(strchar);
        practiceStringMethods.add(lowerStr);
        return practiceStringMethods; // Replace null with the variable you used to store the result
}

    /**
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
       List<Boolean> checkStringContent = new List<Boolean>();
        // Check if the string starts with 'Sales'
        //for (Boolean startsWith : checkStringContent) {
        //System.assert(input.startsWith('Sales'));
        String prefix = 'Sales';
        Boolean startsWith = input.startsWith(prefix);
        checkStringContent.add(startsWith);
        // Check if the string ends with 'Force'
        String endWord = 'Force';
        Boolean endsWith = input.endsWith(endWord);
        checkStringContent.add(endsWith);
        // Check if the string contains 'Awesome'
        String wordContains = 'Awesome';
        Boolean isAwesome = input.contains(wordContains);
        checkStringContent.add(isAwesome);
       // System.assert(input.contains('Awesome'));
        return checkStringContent; // Replace null with the variable you used to store the result
    }

    /**
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello, Hello, Salesforce!') should return 'Hello, Salesforce!'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words
        List<String> split = new List<String>(sentence.split(' '));
        // Create a set to store the unique words
       Set<String> unique = new Set<String>();
        // Add each word to the set
       unique.addAll(split);
        // Join the unique words back into a sentence
        String outputSentence = '';
        for (String words : unique) {
            outputSentence = outputSentence + words + ' ';
        }
        String trimSent = outputSentence.trim();
        // Return the sentence with unique words
        return trimSent;
       // return unique1; // Replace null with the variable you used to store the result
    }

    /**
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        // Initialize the result Integer
        Integer vowelCount = 0;

            for (Integer i = 0; i <str.length(); i++) {
                String letter = str.substring(i, i+1).toLowerCase();
                if(letter.contains('a') || letter.contains('e') || letter.contains('i') || letter.contains('o') || letter.contains('u')){
                    vowelCount++;
                }
                }
            // get individual characters from the string - hint use substring or split
            // check if the character is a vowel
            // if it is a vowel, increment the result Integer

        return vowelCount; // Replace null with the variable you used to store the result
    }

    /**
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // The list of scientists' names
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};

        // The variable to store the concatenated string
        String scientistName;
        String outputScientist = '';
        // Loop through the list of scientists' names
        for (String scientist : scientistNames) {
            
            // If the name doesn't contain the letter 'G', skip this iteration
        if (scientist.containsIgnoreCase('g')) {
            outputScientist +=scientist + ',';
            //String splitString = scientistNames.split();
        } 
    }
            // Add the name to the result string, followed by a comma
            
        // Remove the last comma from the result string
        outputScientist = outputScientist.removeEnd(',');
        return outputScientist; // Replace null with the variable you used to store the result
    }

    /**
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        // Square the input numbers using the Math.pow() function
       Decimal squareA = Math.pow(a, 2);
       Decimal squareB = Math.pow(b, 2);
        // Calculate the absolute difference using Math.abs() function
        Decimal abs = Math.abs(squareB - squareA);
        // Return the result
        return abs; // Replace null with the variable you used to store the result
    }

    /**
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        // Use Math class to generate number between 50 and 100
        Integer randomNum = Integer.valueOf((Math.random() * 100));
        // Return the random integer
        return randomNum; // Replace null with the variable you used to store the result
    }

    /**
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        // Get the todays date
        date.today();
        // Format the current date
        String currentDate = date.today().format();
        // Return the result
        return currentDate; // Replace null with the variable you used to store the result
    }

    /**
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        // Define a map of day of the week as a key and day number as the value
        // Monday = 1, Tuesday = 2, etc.
        Map<String, Integer> days = new Map<String, Integer>();
        days.put('Monday', 1);
        days.put('Tuesday', 2);
        days.put('Wednesday', 3);
        days.put('Thursday', 4);
        days.put('Friday', 5);
        days.put('Saturday', 6);
        days.put('Sunday', 7);
        // Get the day name using .format('EEEE');
        String dayOfWeek = dt.format('EEEE');
        // Get the day number from the map using the day name
       // Set<String> keys = days.keySet();
        //for (String key : keys) {
        //    System.debug(key);
        //    Integer value = days.get(key);
        //    System.debug(value);
        //}
        dayOfWeek = dayOfWeek.substring(0, 1).toUpperCase() + dayOfWeek.substring(1).toLowerCase();

        Integer dayNumber = days.get(dayOfWeek);
        String dayNumberOutput = String.valueOf(dayNumber);

        // Return the result as a string
        return dayNumberOutput; // Replace null with the variable you used to store the result
    }


    /**
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        Integer yearDifference;
        // Subtract the difference in years
        if( d1 == null || d2 == null){
            yearDifference = null;
        }else{
            Integer yearOne = d1.year();
            Integer yearTwo = d2.year();
            yearDifference = yearTwo - yearOne;
        } 
        return yearDifference; // Replace null with the variable you used to store the result
    }

    /**
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        // Declare three public instance variables - title, author, pages
        // title
        public String title;
        // author
        public String author;
        // pages
        public Integer pages;
        // Book constructor to initialize the title and author
        public Book(String title, String author) {
            
            // Initialize the title and author
            this.title = title;
            this.author = author;
        }
    
        // Method that returns the details of the book
          
        public String getBookDetails() {
            // return A string containing the details of the book in the format "Title: <title>, Author: <author>"
            return 'Title: ' + this.title + ', Author: ' + this.author; // Replace null with the variable you used to store the result
        }
}
    

    /**
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        // Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book book = new Book('A Brief History of Time', 'Stephen Hawking');
         // Call the getBookDetails method on the book object to get the details of the book
        //Book bookInstance = new Book();
        // Return the details of the book
        return book.getBookDetails();
    }

    /**
     * Create and update two Book objects and returns the details of both books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return A string containing the details of the book.
     */
    
    public static List<Book> generateBookList(Book myBook) {
         // Create a list of books
         List<Book> bookList = new List<Book>();
         
        //public Book(String title, String author){
           
        // Update the title and author of myBook1
        myBook.title = 'Harry Potter and the Chamber of Secrets';
        myBook.author = 'J.K. Rowling';
        myBook.pages = 352;
        bookList.add(myBook);
        Book firstBook = new Book('A Brief History of Time', 'Stephen Hawking');
         // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
         //Book newBook(String title, String author);
        //firstBook.title = 'A Brief History of Time';
        //firstBook.author = 'Stephen Hawking';
        // Update the pages for A Brief History of Time to 256
        firstBook.pages = 256;
        bookList.add(firstBook);
        // Add the book to the list
        return bookList;
        }
        //bookList.add(new Book(newBook.title, newBook.author, newBook.pages));
        //booksReturn = 'Title: ' + myBook.title + ', Author: ' + myBook.author + ', Pages: ' + myBook.pages;
       //List<String> bookList = new List<String>();
        //bookList.add('Title: ' + myBook.title + ', Author: ' + myBook.author + ', Pages: ' + myBook.pages);
        // bookList.add('Title: ' + myBook2.title + ', Author: ' + myBook2.author + ', Pages: ' + myBook2.pages);
    
         //return bookList;
     


    /**
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        // Constructor to initialize the name and age
        public Person(String personInfo, Integer personAge){
        this.name = personInfo;
        this.age = personAge;
        System.debug(name);
        }
        public void setName(String name){
            this.name = name;
        }
        public String getName(){
            return this.name;
        }
        // Method introduceYourself that returns the details of the person        
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."
        public String introduceYourself(){
        return 'Hello, my name is ' + this.name + ' and I am ' + this.age + ' years old.';
        }
        // Getter method that returns the name of the person
        public String userinput;
        public String getuserinput(){return name;}
        // Getter method that returns the age of the person
        public void setAge(Integer age){
            this.age = age;
        }
        public String userage;
        public Integer getAge(){
            //return String.valueOf(age);
        return age;
        }
        // Setter method that sets the name of the person
        public void setuserinput(String userinput){
            this.userinput = userinput;
        }
        // Setter method that sets the age of the person
        public void setuserage(String userage){
            this.userage = userage;
        }
        
    }

    /**
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

        public static List<String> personDetails() {
        List<String> personResults = new List<String>();
        // Create a new instance of Person class
        Person person = new Person('John Doe', 28);
        // Name the person 'John Doe' and set the age to 28
        
        // Add the details of the person using the introduceYourself method
        String introduction = person.introduceYourself();
        personResults.add(introduction);
        
        // Get the name of the person using the getter method and add it to the list
        personResults.add(person.getName());
        
        // Get the age of the person using the getter method and add it to the list
        personResults.add(String.valueOf(person.getAge()));
        return personResults; // Replace null with the variable you used to store the result
    }

    /**
     * Create a Person object with the provided name and age.
     * 
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person newPerson = new Person(name, age);
        // Return the new instance of the Person class
        return newPerson;
         // Replace null with the variable you used to store the result
}
    /*
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
     public static List<Person> createMultiplePersons(List<String> names, Integer age) {

         // Loop through each name in the provided list of names
             // Create a new Person object for each name
             List<Person> persons = new List<Person>();
    
             for (String name : names) {
                 Person newPerson = new Person(name, age);
                 persons.add(newPerson);
             }
            
             return persons;
            // Add the new Person object to the list of Person objects
       
         // Return the list of Person objects
         //List<Person> existingPersons = new List<Person>();
         //List<Person> updatedPersons = Person.createMultiplePersons(names, commonAge, existingPersons);
        
         //return existingPersons; // Replace null with the variable you used to store the result
     }


     /**
      * Compare two Person objects based on their ages.
      * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
      * If they are the same age, return either.
      *
      * @param person1 The first Person object.
      * @param person2 The second Person object.
      * @return The Person object of the older person.
      */
           public static Person getOlderPerson(Person person1, Person person2) {
            if (person1.age > person2.age) {
                return person1;
            } else if (person2.age > person1.age) {
                return person2;
            } else {
                // If they are the same age, return either person1 or person2
                return person1; // You can also return person2 here, it doesn't matter since they are the same age.
            }
        }
}