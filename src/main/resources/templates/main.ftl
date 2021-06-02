<#import "parts/common.ftl" as c>
<@c.page>
    <div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="row row-cols-lg-auto g-3 align-items-center">
            <div class="col-12">
                <input type="text" name="filter" class="form-control mb-2" value="${filter?ifExists}" placeholder="Search by tag">
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary mb-2">Search</button>
            </div>
        </form>
    </div>
    </div>

    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
    </a>
    <div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <input type="text" name="text" class="form-control" placeholder="Enter message" aria-label="Enter message">
            </div>
            <div class="mb-3">
                <input type="text" name="tag" class="form-control" placeholder="Tag" aria-label="Tag">
            </div>
            <div class="mb-3">
                <label for="formFile" class="form-label">Choose file</label>
                <input class="form-control" name="file" type="file" id="formFile">
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Add message</button>
            </div>
        </form>
    </div>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <#list messages as message>
            <div class="col">
                <div class="card my-3">
                    <#if message.filename??>
                        <img src="/img/${message.filename}" class="card-img-top">
                    </#if>
                    <div class="card-body">
                        <span class="card-text">${message.text}</span>
                        <i>${message.tag}</i>
                    </div>
                    <div class="card-footer">
                        ${message.authorName}
                    </div>
                </div>
            </div>
        <#else>
            no messages
        </#list>

    </div>
</@c.page>