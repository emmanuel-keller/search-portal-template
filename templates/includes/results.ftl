<#-- This template provide the result list -->
<p class="small text-muted">
<#-- Display the number of results -->
<#if results.totalHits?? && results.totalHits gt 0>
${results.totalHits} <#if results.totalHits == 1>result<#else>results</#if>
    (${(results.timer.totalTime / 10)?round/100} seconds)
<#else>No results found for
    <strong>${keywords!?html}</strong>
</#if>
</p>
<#-- The result list -->
<#list results.documents as document>
<div class="r">
    <#if document.fields??>
        <#assign title=document.fields['title']!/>
        <#assign link=document.fields['link']!/>
        <#assign tags=document.fields['tags']!/>
    </#if>
    <#if document.snippets??>
        <#assign content=document.snippets['content']/>
    </#if>
    <h4><a href="${link!'#'}">${title!'Untitled'}</a></h4>
    <div class="text-success">${(link!)?remove_beginning('http://')}</div>
    <div>${content!'- Empty content -'}</div>
    <#if tags??>
        <div>
            <#if tags?is_sequence>
                <#list tags as tag>
                    <span class="badge badge-info">${tag}</span>
                </#list>
            <#else>
                <span class="badge badge-info">${tags}</span>
            </#if>
        </div>
    </#if>
</div>
</#list>