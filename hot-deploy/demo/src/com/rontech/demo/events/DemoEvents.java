package com.rontech.demo.events;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ofbiz.base.util.Debug;
import org.ofbiz.base.util.UtilMisc;
import org.ofbiz.base.util.UtilValidate;
import org.ofbiz.entity.Delegator;
import org.ofbiz.entity.GenericValue;
import org.ofbiz.service.GenericServiceException;
import org.ofbiz.service.LocalDispatcher;

public class DemoEvents {

    public static final String module = DemoEvents.class.getName();

    public static String createDemoEvent(HttpServletRequest request, HttpServletResponse response) {
        Delegator delegator = (Delegator) request.getAttribute("delegator");
        LocalDispatcher dispatcher = (LocalDispatcher) request.getAttribute("dispatcher");
        GenericValue userLogin = (GenericValue) request.getSession().getAttribute("userLogin");

        String demoTypeId = request.getParameter("demoTypeId");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        if (UtilValidate.isEmpty(firstName) || UtilValidate.isEmpty(lastName)) {
            String errMsg = "First Name and Last Name are required fields on the form and can't be empty.";
            request.setAttribute("_ERROR_MESSAGE_", errMsg);
            return "error";
        }

        String comments = request.getParameter("comments");

        try {
            Debug.logInfo("=======Creating Demo record in event using service createDemoByGroovyService=========", module);
            dispatcher.runSync("createDemoByGroovyService", UtilMisc.toMap("demoTypeId", demoTypeId,
                    "firstName", firstName, "lastName", lastName, "comments", comments, "userLogin", userLogin));
        } catch (GenericServiceException e) {
            String errMsg = "Unable to create new records in Demo entity: " + e.toString();
            request.setAttribute("_ERROR_MESSAGE_", errMsg);
            return "error";
        }
        request.setAttribute("_EVENT_MESSAGE_", "Demo created succesfully.");
        return "success";
    }
}