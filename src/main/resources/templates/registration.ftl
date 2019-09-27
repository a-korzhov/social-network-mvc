<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page "Registration page">
    <div class="mb-1"><i style="color: orangered">Please, enter real information</i></div>
    ${info?if_exists}
    <@l.login "/registration" true/>
</@c.page>