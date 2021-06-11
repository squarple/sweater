<#macro login path isRegisterForm>
    <form action="${path}" method="post" xmlns="http://www.w3.org/1999/html">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInput"  placeholder="User name" name="username">
            <label for="floatingInput">User Name</label>
        </div>
        <div class="form-floating mb-3">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password"/>
            <label for="floatingPassword"> Password</label>
        </div>
        <#if isRegisterForm>
            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingInput" placeholder="some@some.com" name="email"/>
                <label for="floatingInput">Email</label>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm>
            <a href="/registration">Add new user</a>
        </#if>
        <button class="btn btn-primary" type="submit">
            <#if isRegisterForm>Create<#else>Sign In</#if>
        </button>
    </form>
</#macro>

<#macro logout>
    <div>
        <form class="d-flex" action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button class="btn btn-primary" type="submit">Logout</button>
        </form>
    </div>
</#macro>