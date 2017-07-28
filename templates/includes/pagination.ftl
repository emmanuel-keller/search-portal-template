<#-- This template provide the pagination -->
<#if paging??>
<nav aria-label="pagination">
    <ul class="pagination pagination-sm justify-content-center">
    <#-- The previous button -->
        <#if paging.prev??>
            <li class="page-item">
                <button class="page-link" name="start" value="${paging.prev.start}">Previous</button>
            </li>
        </#if>
        <#if paging.pages??>
        <#-- The pages button -->
            <#list paging.pages as page>
            <#-- If this is the current page, it is active, with no link -->
                <#if paging.current?? && paging.current.number == page.number>
                    <li class="page-item active">
                        <a class="page-link" href="#">${page.number}</a>
                    </li>
                <#else>
                    <li class="page-item">
                        <button class="page-link" name="start" value="${page.start}">${page.number}</button>
                    </li>
                </#if>
            </#list>
        </#if>
    <#-- The next button -->
        <#if paging.next??>
            <li class="page-item">
                <button class="page-link" name="start" value="${paging.next.start}">Next</button>
            </li>
        </#if>
    <#-- The current page is set as an hidden input -->
        <#if paging.current??>
            <input type="hidden" name="start" value="${paging.current.start?c}">
        </#if>
    </ul>
</nav>
</#if>