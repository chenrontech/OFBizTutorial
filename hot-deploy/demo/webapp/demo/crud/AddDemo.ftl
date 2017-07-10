<div class="screenlet-body">
  <form id="createDemoEvent" method="post" action="<@ofbizUrl>createDemoEvent</@ofbizUrl>">
    <input type="hidden" name="addDemoFromFtl" value="Y"/>
    <fieldset>
      <div>
        <span class="label">${uiLabelMap.DemoType}</span>
        <select name="demoTypeId" class='required'>
          <#list demoTypes as demoType>
            <option value='${demoType.demoTypeId}'>${demoType.description}</option>
          </#list>
        </select>*
      </div>
      <div>
        <span class="label">${uiLabelMap.DemoFirstName}</span>
        <input type="text" name="firstName" id="firstName" class='required' maxlength="20" />*
      </div>
      <div>
        <span class="label">${uiLabelMap.DemoLastName}</span>
        <input type="text" name="lastName" id="lastName" class='required' maxlength="20" />*
      </div>
      <div>
        <span class="label">${uiLabelMap.DemoComment}</span>
        <input type="text" name="comments" id="comments" class='inputBox' size="60" maxlength="255" />
      </div>
    </fieldset>
    <input type="submit" value="${uiLabelMap.CommonAdd}" />
  </form>
</div>