package com.rontech.demo.services;
import java.util.Map;

import org.ofbiz.base.util.Debug;
import org.ofbiz.entity.Delegator;
import org.ofbiz.entity.GenericEntityException;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.service.DispatchContext;
import org.ofbiz.service.ServiceUtil;

public class DemoServices {

    public static final String module = DemoServices.class.getName();

    public static Map<String, Object> createDemo(DispatchContext dctx, Map<String, ? extends Object> context) {
        Map<String, Object> result = ServiceUtil.returnSuccess();
        Delegator delegator = dctx.getDelegator();
        try {
            GenericValue demo = delegator.makeValue("Demo");
            // Auto generating next sequence of demoId primary key
            demo.setNextSeqId();
            // Setting up all non primary key field values from context map
            demo.setNonPKFields(context);
            // Creating record in database for Demo entity for prepared value
            demo = delegator.create(demo);
            result.put("demoId", demo.getString("demoId"));
            Debug.log("==========This is my first Java Service implementation in Apache OFBiz. Demo record created successfully with DemoId: " + demo.getString("demoId"));
        } catch (GenericEntityException e) {
            Debug.logError(e, module);
            return ServiceUtil.returnError("Error in creating record in Demo entity ........" + module);
        }
        return result;
    }
}