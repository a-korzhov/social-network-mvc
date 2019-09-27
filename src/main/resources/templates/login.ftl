<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page "Login Page">
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="alert alert-danger" role="alert">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>
    <#if info??>
        <div class="alert alert-${infoType}" role="alert">
            ${info}
        </div>
    </#if>
    <@l.login "/login" false/>
</@c.page>