<#-- This template display the search form -->
<div class="input-group">
    <input type="text" class="form-control" name="keywords"
           placeholder="Search for..." value="${keywords!?html}">
    <input type="hidden" name="index" value="articles">
    <input type="hidden" name="query" value="main">
    <span class="input-group-btn"><button class="btn btn-secondary" type="submit">Search!</button></span>
</div>