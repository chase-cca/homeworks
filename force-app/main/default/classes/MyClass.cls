public with sharing class MyClass {

    public String myName;
    public Integer myValue;

    public MyClass() {
        System.debug('>>> Default Constructor');
        this.myName = 'Not Sure';
    }

    public MyClass(Integer myValue) {
        System.debug('>>> Overload Constructor');
    }

    public MyClass(String myName) {
        this();
        System.debug('>>> Overload Constructor');
        if(String.isBlank(myName)) {
            return;
        }
        this.myName = myName;
    }

}