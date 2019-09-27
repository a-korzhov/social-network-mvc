<#import "parts/common.ftl" as c>

<@c.page "Login">
    <h2>Change your email</h2>
    <h5>Your login: ${username}</h5>
    ${info?if_exists}
    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password:</label>
            <div class="col-sm-6">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
            </div>
        </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label"> Email:</label>
                <div class="col-sm-6">
                    <input type="email" name="email" class="form-control" placeholder="example@gmail.com" value="${email!''}"/>
                </div>
            </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="btn btn-primary" type="submit">Save</button>
    </form>
</@c.page>