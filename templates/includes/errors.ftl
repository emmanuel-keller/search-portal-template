<#if errors?has_content>
    <#list errors as error>
    <div class="alert alert-danger" role="alert">
        <h4 class="alert-heading">Oops, we got an error</h4>
        <p class="mb-0">${error!'Unknown error'}</p>
    </div>
    </#list>
</#if>