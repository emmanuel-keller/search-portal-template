<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/search-portal.css">
    <title>My Search Portal</title>
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
                <span class="input-group-btn">
                <button class="btn btn-secondary" type="submit">Search!</button>
            </span>
            </div>
        </form>
        <hr>
    </div>
</div>
<#if results??>

</#if>
<script src="/js/search-portal.js"></script>
</body>
</html>