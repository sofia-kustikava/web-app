<#import "parts/common.ftlh" as c>

<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" value="${filter!?ifExists}" class="form-control" placeholder="Search by tag">
            <button type="submit" class="btn btn-primary ml-3">Search</button>
        </form>
    </div>
</div>
<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" action="main" enctype="multipart/form-data">
            <div class="form-group">
            <input type="text" name="text" class="form-control" placeholder="Input the message"/>
            </div>
            <div class="form-group">
                <input type="text" name="tag" class="form-control" placeholder="Tag">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-primary ml-3">Send</button>
            </div>
        </form>
    </div>
</div>
<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-3">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-multed">
                ${message.authorName}
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>
</@c.page>