<#if results.facets??>
    <#list results.facets?keys as key>
    <div class="card">
        <div class="card-block">
            <h5 class="card-title">${key?capitalize}</h5>
            <ul class="list-unstyled">
                <#assign values = results.facets[key]/>
                <#assign selectedValues = params[key]!/>
                <#list values?keys as value>
                    <#if selectedValues?has_content && selectedValues?seq_contains(value)>
                        <#assign clickValue = ''/>
                        <#assign buttonClass='btn-primary'>
                    <#else>
                        <#assign clickValue = value?html/>
                        <#assign buttonClass='btn-default'>
                    </#if>
                    <li>
                        <button type="submit" class="btn btn-sm ${buttonClass}"
                                name="${key?html}" value="${clickValue}">
                        ${value?capitalize}
                            <span class="badge badge-default badge-pill">${values[value]}</span>
                        </button>
                    </li>
                </#list>
            </ul>
        </div>
    </div>
    </#list>
</#if>