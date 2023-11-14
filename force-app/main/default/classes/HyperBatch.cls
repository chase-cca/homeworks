public class HyperBatch implements Database.Batchable<SObject>, Database.Stateful {

    public static Integer maxNumberOfRecordsPerBatch = 1;
    public static final Integer MAX_NUMBER_OF_CHILD_BATCHES = 5;
    public List<Set<Id>> children = new List<Set<Id>>();

    public HyperBatch() {
        for(Integer i = 0; i < 5; i++) {
            children.add(new Set<Id>());
        }
    }


    public Database.QueryLocator start(Database.BatchableContext bc) {
        List<AggregateResult> ar = [SELECT COUNT(Id) countOfIds FROM Account];
        Integer countOfIds = (Integer) ar.get(0)?.get('countOfIds');
        maxNumberOfRecordsPerBatch = Integer.valueOf(Math.ceil(countOfIds / MAX_NUMBER_OF_CHILD_BATCHES));
        System.debug(children);
        String q = '';
        q += ' SELECT Id ';
        q += ' FROM Account ';
        return Database.getQueryLocator(q);
    }

    // 2000 Accounts per scope
    public void execute(Database.BatchableContext bc, List<Account> scope) {
        System.debug(children);
        System.debug(scope.size());
        for(Integer i = 0; i < scope.size(); i++) {
            Integer batchNumber = Math.mod(i, MAX_NUMBER_OF_CHILD_BATCHES);
            System.debug(batchNumber);
            children.get(batchNumber).add(scope.get(i)?.Id);
        }
        return;
    }

    public void finish(Database.BatchableContext bc) {
        for(Set<Id> accountIds : children) {
            Database.executeBatch(new HyperBatchChild(accountIds), 200);
        }
    }

}