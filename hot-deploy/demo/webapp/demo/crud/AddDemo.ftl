<!--
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
-->

<form method="post" action="<@ofbizUrl>createDemoEvent</@ofbizUrl>" name="createDemoEvent" class="form-horizontal">
  <div class="control-group">
    <label class="control-label" for="demoTypeId">${uiLabelMap.DemoType}</label>
    <div class="controls">
      <select id="demoTypeId" name="demoTypeId">
        <#list demoTypes as demoType>
          <option value='${demoType.demoTypeId}'>${demoType.description}</option>
        </#list>
      </select>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="firstName">${uiLabelMap.DemoFirstName}</label>
    <div class="controls">
      <input type="text" id="firstName" name="firstName" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="lastName">${uiLabelMap.DemoLastName}</label>
    <div class="controls">
      <input type="text" id="lastName" name="lastName" required>
    </div>
  </div>
  <div class="control-group">
    <label class="control-label" for="comments">${uiLabelMap.DemoComment}</label>
    <div class="controls">
      <input type="text" id="comments" name="comments">
    </div>
  </div>
  <div class="control-group">
    <div class="controls">
      <button type="submit" class="btn">${uiLabelMap.CommonAdd}</button>
    </div>
  </div>
</form>