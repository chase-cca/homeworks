/**
* The SOQL class serves as a primer into the Salesforce Object Query Language in Apex.
* It covers fundamental aspects such as SELECT statements, WHERE clauses, Relationship queries, and LIMIT keyword.
*
* This class introduces developers to the concept of retrieving data from Salesforce using SOQL. It provides
* a step-by-step guide on how to construct SOQL queries, filter results using WHERE clause, retrieve related
* records, and manage data volume using the LIMIT keyword.
* 
* Topics covered in this class include:
* - Understanding the structure of a SOQL query.
* - Crafting basic SELECT statements in SOQL.
* - Applying filters using the WHERE clause in SOQL.
* - Fetching related records using Relationship queries.
* - Controlling the amount of data retrieved using the LIMIT keyword.
* 
* Users of this class can expect to gain a solid understanding of SOQL in Apex and
* be prepared to handle data retrieval tasks in Salesforce development.
* 
* @author Your Name
* @version 1.0
*/

public with sharing class SOQL {
    
    /** 
     * Update/Uncomment the template code to create a method
     * Returns all leads in Salesforc Org
     * @return List of all leads with Id, LastName, Company, Phone, Email
     * Update the corresponding test class and testGetAllLeads method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Update/Uncomment the template code to create a method
     * Returns all contacts with first name of John.
     * @return A list of Contact records.
     * Update the corresponding test class and testGetContactsByFirstName method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Update/Uncomment the template code to create a method
     * Returns the Contact Id for all contacts with last name of Smith or Jones
     * @return A list of Contact Ids.
     * Update the corresponding test class and testGetContactIdsByLastName method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Update/Uncomment the template code to create a method
     * Returns List of closed won opportuntiies for a specific Account.
     * Example: yourMethodName('001XXXXXXXXXXXX') should return the list of closed won opportunities for the Account with the Id
     * @param accountId The ID of the Account.
     * @return A list of Opportunities with important opportunities fields
     * Update the corresponding test class and testGetClosedWonOpportunityCountByAccount method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Update/Uncomment the template code to create a method
     * Returns the total count of Account records.
     * @return The Integer count of Account records.
     * Update the corresponding test class and testGetAccountCount method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Update/Uncomment the template code to create a method
     * Return Key Value pair of Task Id and Task records for any tasks due date within the next 7 days.
     * @return A map of Task Ids to Task records.
     * Update the corresponding test class and testGetTasksDueNextWeek method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Update/Uncomment the template code to create a method
     * Retrieves all Contacts that have a example.com domain in their Email.
     * @return A list of Contact records.
     * Update the corresponding test class and testGetContactsByEmailDomain method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}

    /**
     * Retrieves all Opportunities that have a specific keyword in their Name.
     * Example: getOpportunitiesByNameKeyword('keyword') should return all Opportunities that have 'keyword' in their Name.
     * @param keyword The keyword to search for in the Opportunity Name.
     * @return A list of Opportunity records.
     */
    public static List<Opportunity> getOpportunitiesByNameKeyword(String keyword) {
        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Retrieves all Cases that Case Origin is not Web or Email or Blank
     * @return A list of Case records.
     */
    public static List<Case> getFilterCaseOrigins() {
        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Update/Uncomment the template code to create a method
     * Retrieves all Leads that have a specific Lead Source or contain a specific keyword in their Title.
     * Example: yourMethodName('Lead Source', 'keyword') should return all Leads that have 'Lead Source' in their Lead Source or 'keyword' in their Title.
     * @param leadSource The Lead Source to search for.
     * @param keyword The keyword to search for in the Lead Title.
     * @return A list of Lead records.
     * Update the corresponding test class and testGetLeadsBySourceOrDescription method to cover this method
     */
    //[public | private ] [static] data_type method_name (input parameters) {
    //  The body of the method
    //}    

    /**
     * Returns the names of all Contacts associated with an Account.
     * Example: getContactNamesByAccount('001XXXXXXXXXXXX') should return the list of Contact LastNames for the Account with the Id
     * @param accountId The ID of the Account.
     * @return A list of Contact LastName.
     */
    public static List<String> getContactNamesByAccount(Id accountId) {
        // Create a list to hold the Contact LastNames

        // Query the Contacts
        // Loop through each Contact and add the LastName to the list
        //for () {
        //    
        //}

        // Return the list of Contact LastNames
        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Returns the total revenue for all Opportunities in a specific Stage or if the amount is greater than 10000.
     * Example: getTotalRevenueByStage('Closed Won') should return the total revenue for all Opportunities in the 'Closed Won' Stage.
     * @param stage The Stage value to filter Opportunities.
     * @return The total revenue.
     */
    public static Decimal getTotalRevenueByStage(Set<String> stage) {
        // Use AggregateQuery to get the total revenue
        List<AggregateResult> ars = [
            SELECT SUM(Amount) sumOfAmount
            FROM Opportunity
            WHERE StageName IN :stage OR Amount >= 10000
        ];
        Decimal totalRevenue = 0.00;
        for(AggregateResult ar : ars) {
            totalRevenue += (Decimal) ar.get('sumOfAmount');
        }
        // Return the total revenue
        return totalRevenue; // Replace null with the variable you used to store the result
    }

    /**
     * Retrieves the first 10 Accounts ordered by Name.
     * @return A list of the first 10 Accounts ordered by Name.
     */
    public static List<Account> getFirstTenAccounts() {
        return null; // Replace null with the variable you used to store the result
    }
    
    /**
     * Retrieves the Opportunities with an Amount greater than 100,000, ordered by CloseDate, and limited to 5 records.
     * @return A list of Opportunities with an Amount greater than 100,000, ordered by CloseDate, and limited to 5 records.
     */
    public static List<Opportunity> getHighValueOpportunities() {
        return null; // Replace null with the variable you used to store the result
    }
    
    /**
     * Retrieves the Contacts with the earliest Birthdate, ordered by Birthdate in descending order, and limited to 3 records.
     * @return A list of Contacts
     */
    public static List<Contact> getBirthdateContacts() {
        return null; // Replace null with the variable you used to store the result
    }
    
    /**
     * Retrieves the Cases with a specific Status, ordered by CreatedDate, and limited to 10 records with an offset of 5.
     * @return A list of Cases with a specific Status, ordered by CreatedDate, and limited to 10 records with an offset of 5.
     */
    public static List<Case> getCasesWithStatus() {
        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Returns Set of Case Ids for a specific Account.
     * Example: getCaseIdsByAccount('001XXXXXXXXXXXX') should return the set of Case Ids for the Account with the Id
     * @param accountId The ID of the Account.
     * @return A set of Case Ids.
     */
    public static Set<Id> getCaseIdsByAccount(Id accountId) {
        // Create a set to hold the Case Ids

        // Query the Cases
        // Loop through each Case and add the Id to the set
        //for () {
        //    
        //}

        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Return Map of Account Ids to Account Names Not in a specific Country.
     * Example: getAccountIdsToNamesNotInCountry('United States') should return the map of Account Ids to Account Names for Accounts that are not in the United States.
     * @param country The country to filter Accounts.
     * @return A map of Account Ids to Account Names.
     */
    public static Map<Id, String> getAccountIdsToNamesNotInCountry(String country) {
        // Create a map to hold the Account Ids to Account Names
        Map<Id, String> accountIdsToNames = new Map<Id, String>();

        // Query the Accounts
        // Loop through each Account and add the Id and Name to the map

        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Retrieves the Opportunity Name, Account Name, and Owner Name for Opportunities that have a Stage of 'Closed Won'.
     * Example: getOpportunityDetailsForClosedWon()
     * @return A list of filtered Opportunity
     */
    public static List<Opportunity> getOpportunityDetailsForClosedWon() {   
        return [SELECT Name, OwnerId, Account.Name, AccountId FROM Opportunity WHERE StageName = 'Closed Won'];     
       // return null; // Replace null with the variable you used to store the result
    }

    /**
     * Retrieves the Account Name for a given Contact.
     * Example: getAccountNameForContact('003XXXXXXXXXXXX') should return the Account Name for the Contact with the Id
     * @param contactId The Id of the Contact.
     * @return The Account Name of the Contact.
     */
    public static String getAccountNameForContact(String contactId) {
        return null; // Replace null with the variable you used to store the result
    }    

    /**
     * Returns single Account that has related opportunities in the same query
     * Example: getOpportunityAndAccountNamesForLineItem('001XXXXXXXXXXXX') should return the Account Name for the Account with the Id and all related Opportunities
     * @param accountId The ID of the Account.
     * @return An Account record with related Opportunities.
     */
    public static Account getOpportunityAndAccountNamesForLineItem(Id accountId) {
        return null; // Replace null with the variable you used to store the result
    }

    /**
     * Retrieves all contacts that have the Mailing State Similiar to the Account Billing State.
     * Example: getAccountsWithContactsByState('001XXXXXXXXXXXX') should return a list of Contacts that have the same Mailing State as the Account with the Id
     * @param Account Id
     * @return A list of maps containing the Account's MailingState and the related Contacts.
     */
    public static List<Contact> getAccountsWithContactsByState(String state) {
        
        List<Contact> contacts = [
            SELECT Id, MailingState, AccountId
            FROM Contact
            WHERE AccountId IN (SELECT Id FROM Account WHERE BillingState = :state)
        ];
        return contacts; // Replace null with the variable you used to store the result
    }

    /**
     * Retrieves all list of Leads, extracts email domains from them, and finds Accounts with matching website domains
     * Example: findContactsByLeadEmailDomains([set of lead ids]) should return a list of Accounts with matching email domains
     * @param A list of Lead Ids.
     * @return A list of Accounts with matching email domains.
     */
    public static List<Account> findContactsByLeadEmailDomains(Set<Id> leadIds) {
        List<Lead> leads = [
            SELECT 
            Email 
            FROM Lead 
            WHERE Id IN :leadIds
        ];
        if(leads.isEmpty()) {
            return new List<Account>();
        }
        // Create a set of email domains from the Leads
        Set<String> leadsEmailDomains = new Set<String>();      
        
        // Loop through each Lead
        for (Lead ld : leads) {
            if(String.isBlank(ld.Email)) {
                continue;
            }
            String emailDomain = ld.Email.substringAfter('@');
            if(String.isBlank(emailDomain)) {
                continue;
            }
            // domains probably begin with different things
            // so we can add www.domain.com https://domain.com or https://www.domain.com
            // leadsEmailDomains.add('www.' + emailDomain);        
            // but the best practice is probably to use a wildcard '%'' before our domain name
            // we will also do escapeSingleQuotes so our query doesn't explode
            // if a customer or sales person inputs a very bad email address, for example...
            leadsEmailDomains.add('%' + String.escapeSingleQuotes(emailDomain));
        }
        if(leadsEmailDomains.isEmpty()) {
            return new List<Account>();
        }
        // now we already have our set against which we can query Accounts by their Website field
        // you can use the LIKE operator against a Set of Strings 
        // to see if the Accounts you get are LIKE anything in the set
        // using LIKE with the '%' wildcard character means we will get any account that ends with domain.com

        List<Account> accounts = [
            SELECT 
                    Id,
                    Website
            FROM Account
            WHERE Website IN :leadsEmailDomains
        ];
        return accounts;
    }

    /**
     * Clones and Inserts Opportunity Line Items from an original Opportunity to a list of cloned Opportunities.
     * Adds a randomized number between 1 to 3 to the quantity of each line item.
     * Example: cloneLineItems('001XXXXXXXXXXXX', [list of opportunity ids]) should clone the line items from the Opportunity with the Id to each Opportunity in the list
     * @param Original Opportunity Id
     * @param List of cloned Opportunity Ids
     * @return void.
     */
    public static void cloneLineItems(Id origOppId, List<Id> cloneOppIds) {
        // Query the original Opportunity Line Items

        // Create a list to hold the new line items

        // Generate a random number between 1 and 3

        // Loop through each cloned Opportunity Id

            // Loop through each original line item

                // Clone the original line item and add the random number to the quantity

        // Insert the new line items
    }
    
    // /**
    //  * Sets the 'Primary_Contact__c' field for the provided Opportunities from the first related Contact of the Account, ordered by first name.
    //  * Example: setPrimaryContact() should set the 'Primary_Contact__c' field for every Opportunity in the org
    //  * @param A list of 'Closed Won' Opportunities.
    //  * @return void.
    //  */
    // public static void setPrimaryContact() {
    //     //Use the getOpportunityDetailsForClosedWon() method to get the Opportunities
    //     Map<Id, Opportunity> opps = new Map<Id, Opportunity>(getOpportunityDetailsForClosedWon());
    //     // Create a set of Account Ids from the Opportunities
    //     Set<Id> accountIds = new Set<Id>();
    //     for(Opportunity opp : opps.values()) {
    //         accountIds.add(opp.AccountId);
    //     }
    //     // Query the Contacts
    //     List<Account> accountsWithFirstChildContact = [
    //         SELECT Id,
    //                 (SELECT Id 
    //                 FROM Contacts 
    //                 ORDER BY FirstName ASC
    //                 LIMIT 1)
    //         FROM Account
    //         WHERE Id IN :accountIds
    //     ];
    //     // Loop through each Contact and add the Account Id and Contact to the map
    //     Map<Id, Id> accountIdToPrimaryContactIdMap = new Map<Id, Id>();
    //     for(Account acc : accountsWith1ChildrenContact) {
    //         accountIdToPrimaryContactIdMap.put(acc.Id, acc.Contacts?.get(0)?.Id);
    //     }
    //     // Loop through each Opportunity
    //     for(Opportunity opp : opps.values()) {
    //         opp.Primary_Contact__c = accountIdToPrimaryContactIdMap.get(opp.AccountId);
    //     }
    //             // Update the Opportunity primary contact from accountToContactMap
    //             update opps.values();
    //     // Update the Opportunities
    // }
}