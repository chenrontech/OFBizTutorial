import org.ofbiz.entity.GenericEntityException;

def createDemo() {
    result = [:];
    try {
        demo = delegator.makeValue("Demo");
        // Auto generating next sequence of demoId primary key
        demo.setNextSeqId();
        // Setting up all non primary key field values from context map
        demo.setNonPKFields(context);
        // Creating record in database for Demo entity for prepared value
        demo = delegator.create(demo);
        result.demoId = demo.demoId;
        logInfo("==========This is my first Groovy Service implementation in Apache OFBiz. Demo record "
                + "created successfully with demoId: " + demo.getString("demoId"));
    } catch (GenericEntityException e) {
        logError(e.getMessage());
        return error("Error in creating record in Demo entity ........");
    }
    return result;
}