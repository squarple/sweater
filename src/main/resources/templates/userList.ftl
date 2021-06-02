<#import "parts/common.ftl" as c>

<@c.page>
    <h4 class="mb-3">List of users</h4>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Role</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a class="btn btn-primary" href="/user/${user.id}" role="button">edit</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>