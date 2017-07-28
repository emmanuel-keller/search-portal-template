<!DOCTYPE html>
<html lang="en">
<head>
<#include 'includes/head.ftl'>
    <title>My Search Portal IL EST BO</title>
</head>
<body>
<form>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-3">My Search Portal</h1>
            <p class="lead">This is my awesome search portal</p>
            <div class="input-group">
                <input type="text" class="form-control" name="keywords"
                       placeholder="Search for..." value="${keywords!?html}">
                <input type="hidden" name="index" value="articles">
                <input type="hidden" name="query" value="main">
                <span class="input-group-btn">
                <button class="btn btn-secondary" type="submit">Search!</button>
            </span>
            </div>
        </div>
    </div>
<#if results??>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <p class="small text-muted">
                    <#if results.totalHits?? && results.totalHits gt 0>
                    ${results.totalHits} <#if results.totalHits == 1>result<#else>results</#if>
                        (${(results.timer.total_time / 10)?round/100} seconds)
                    <#else>No results found for
                        <strong>${keywords!?html}</strong>
                    </#if>
                </p>
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
            </div>
            <div class="col-md-3 facets">
                <#if results.facets??>
                    <#list results.facets?keys as key>
                        <div class="card">
                            <div class="card-block">
                                <h5 class="card-title">${key?capitalize}</h5>
                                <ul class="list-unstyled">
                                    <#assign values = results.facets[key]/>
                                    <#assign selectedValues = params[key]/>
                                    <#list values?keys as value>
                                        <#if selectedValues?? && selectedValues?seq_contains(value)>
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
            </div>
        </div>
    </div>
</#if>
</form>
<#include 'includes/foot.ftl'>
</body>
</html>