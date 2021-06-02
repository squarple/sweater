<#import "parts/common.ftl" as c>

<@c.page>
    <h4 class="mb-3">User editor</h4>

    <form action="/user" method="post">
        <div class="mb-3">
            <label for="formGroupExampleInput" class="form-label">User name</label>
            <input type="text" value="${user.username}" class="form-control" id="formGroupExampleInput" placeholder="User name" name="username">
        </div>

        <#list roles as role>
            <div class="form-check">
                <input type="checkbox" name="${role}" class="form-check-input" ${user.roles?seq_contains(role)?string("checked", "")} id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                    ${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</@c.page>