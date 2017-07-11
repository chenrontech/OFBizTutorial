<#-- <div class="screenlet-body"> -->
  <#-- <#if demoList?has_content> -->
    <#-- <table cellspacing=0 cellpadding=2 border=0 class="basic-table"> -->
    <table class="table table-bordered table-striped table-hover">
      <thead><tr>
        <th>${uiLabelMap.DemoId}</th>
        <th>${uiLabelMap.DemoType}</th>
        <th>${uiLabelMap.DemoFirstName}</th>
        <th>${uiLabelMap.DemoLastName}</th>
        <th>${uiLabelMap.DemoComment}</th>
      </tr></thead>
      <tbody>
        <#list demoList as demo>
          <tr>
            <td>${demo.demoId}</td>
            <td>${demo.getRelatedOne("DemoType").get("description", locale)}</td>
            <td>${demo.firstName?default("NA")}</td>
            <td>${demo.lastName?default("NA")}</td>
            <td>${demo.comments!}</td>
          </tr>
        </#list>
      </tbody>
    </table>
  <#-- </#if> -->
<#-- </div> -->