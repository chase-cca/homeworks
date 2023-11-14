/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-06-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ContactTriggerHandler {
    public ContactTriggerHandler() {

    }
    public static void validateContactsHavePhoneNumber (List<Contact> contacts){
        for(Contact newContact : contacts){
                if(newContact.phone == null){
                    newContact.addError('You cant add that');
                }
            }
    }
}