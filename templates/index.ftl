<!DOCTYPE html>
<html lang="en">
<head>
<#include 'includes/head.ftl'>
    <title>My Search Portal IL EST BO</title>
</head>
<body>
<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-3">My Search Portal</h1>
        <p class="lead">This is my awesome search portal</p>
        <form>
            <div class="input-group">
                <input type="text" class="form-control" name="keywords"
                       placeholder="Search for..." value="${keywords!?html}">
                <input type="hidden" name="index" value="articles">
                <input type="hidden" name="query" value="main">
                <span class="input-group-btn">
                <button class="btn btn-secondary" type="submit">Search!</button>
            </span>
            </div>
        </form>
    </div>
</div>
<#if results??>
<div class="container">
    <h3>${results.totalHits}</h3>
    <#list results.documents as document>
        <p>
        ${document.fields}
        </p>
    </#list>
</div>
</#if>
<#include 'includes/foot.ftl'>
</body>
</html>
