<#if errors?has_content>
    <#list errors as error>
    <div class="alert alert-danger" role="alert">
        <#if message.title?has_content><h4 class="alert-heading">Oops, we got an error</h4></#if>
        <#if message.content?has_content><p class="mb-0">error</p></#if>
    </div>
    </#list>
</#if>