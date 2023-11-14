public class HyperBatchChild implements Database.Batchable<Id>, Database.Stateful {

    public Set<Id> accountIds;

    public HyperBatchChild(Set<Id> accountIds) {
        this.accountIds = accountIds;
    }

    public List<Id> start(Database.BatchableContext bc) {
        return new List<Id>(this.accountIds);
    }
    
    public void execute(Database.BatchableContext bc, List<Id> scope) {
        List<Account> trxs = [
                SELECT 
                    Id,
                    Name
                FROM Account
                WHERE Id IN :scope
        ];
        for(Account trx : trxs) {
            trx.Description = 'scope.size(): ' + trxs.size() + '\n' + trx.Name;
        }
        update trxs;
    }

    public void finish(Database.BatchableContext bc) {
        System.debug('done');
    }
}