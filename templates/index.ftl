<!DOCTYPE html>
<html lang="en">
<head>
<#include 'includes/head.ftl'>
    <title>My Search Portal</title>
</head>
<body>
<form>
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-3">My Search Portal</h1>
            <p class="lead">This is my awesome search portal</p>
        <#include 'includes/search_form.ftl'>
        <#include 'includes/errors.ftl'>
        </div>
    </div>
<#if results??>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <#include 'includes/results.ftl'>
                <#include 'includes/pagination.ftl'>
            </div>
            <div class="col-md-3 facets">
                <#include 'includes/facets.ftl'>
            </div>
        </div>
    </div>
</#if>
</form>
<#include 'includes/foot.ftl'>
</body>
</html>